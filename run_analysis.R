#
#
# FILE: run_analysis.R
#
#
# DESCRIPTION: This script outputs a tidy data set using the Human Activity Recognition Using Smartphones Data Set.
#
#


library(dplyr)


#########################################
# 1. Download and upzip the data folder #
#########################################


# Download zip file from the website provided in the README.md
zipurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipfile <- "UCI HAR Dataset.zip"
datafolder <- "UCI HAR Dataset"
 
if(!file.exists(zipfile) & !file.exists(datafolder)) {
 download.file(zipurl, zipfile, mode = "wb")
}
 
# Unzips file
if(!file.exists(datafolder)) {
 upzip(zipfile)
}


##########################################
# 2. Reads the TEST and TRAIN data files #
##########################################


# a. Reading the FEATURES file
featnames <- read.table("UCI HAR Dataset/features.txt")

# b. Reading TEST files
xtest <- read.table("UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("UCI HAR Dataset/test/Y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

# c. Reading TRAIN files
xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("UCI HAR Dataset/train/Y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

# d. Creating the activity labels from the activity_labels file
activity_labels <- data.frame(Test_Activity_ID = 1:6, Activity = c("WALKING", "WALKING UPSTAIRS", "WALKING DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))


#############################################################################################
# 3. Extracts only the measurements on the mean and standard deviation for each measurement #
#############################################################################################


# a. Filtering on only the mean and std feature names
combined <- c(grep("*mean", featnames$V2), grep("*std", featnames$V2))
extracted_feats <- featnames[c(combined),]

# b. Filters on only mean and std columns for the TEST file
filtered_test <- select(xtest, combined)

# c. Filters on only mean and std columns for the TRAIN file
filtered_train <- select(xtrain, combined)


######################################################################################
# 4. Manipulating the TEST and TRAIN files to include the Subject ID and Activity ID #
######################################################################################


# a. Renaming two columns in TEST file
names(subject_test)[1] <- "Subject_ID"
names(ytest)[1] <- "Activity_ID"

# b. Creating a Test_Or_Train column
marker_test <- mutate(filtered_test, Test_Or_Train = "Test")

# c. Finally merging everything together for the TEST file
finalxtest <- data.frame(subject_test, ytest, marker_test)

# d. Renaming two columns
names(subject_train)[1] <- "Subject_ID"
names(ytrain)[1] <- "Activity_ID"

# e. Creating a Test_Or_Train column
marker_train <- mutate(filtered_train, Test_Or_Train = "Train")

# f. Finally merging everything together for the TRAIN file
finalxtrain <- data.frame(ytrain, subject_train, marker_train)

# g. Combining the final TEST and TRAIN files
merged <- rbind(finalxtest, finalxtrain)


#############################################################################
# 5. Uses descriptive activity names to name the activities in the data set #
#############################################################################


activity_merged <- merge(merged, activity_labels, by.x = "Activity_ID", by.y = "Test_Activity_ID")


########################################################################
# 6. Appropriately labels the data set with descriptive variable names #
########################################################################


# a. Modifying the column names
extracted_feats$V2 <- gsub("-", ".", extracted_feats$V2)

extracted_feats$V2 <- gsub("\\()", "", extracted_feats$V2)
  # Escape the parenthesis with a double-backslash

list_features <- as.character(extracted_feats$V2)

names(activity_merged)[3:81] <- list_features # renaming columns

activity_merged <- activity_merged %>% select(Subject_ID, Activity_ID, Activity, Test_Or_Train, everything())

activity_merged$Activity_ID <- NULL


######################################################################################
# 7. From the data set in step 4, create a second independent tidy data set with the #
#    average of each variable for each activity and each subject                     #
######################################################################################


# a. The tidy data set
write.table(activity_merged, file = "activity_merged.txt", row.names = FALSE)

# b. Read in the tidy data set
activity_merged <- read.table("activity_merged.txt", header = TRUE)

# c. Arrange the data to take the average of each variable for each activity and each subject
activity_merged$Test_Or_Train <- NULL
activity_merged <- arrange(activity_merged, Subject_ID, Activity)
final_avg <- activity_merged %>% group_by(Subject_ID, Activity) %>% summarize_all(funs(mean))
write.table(final_avg, file = "tidy_data.txt", row.names = FALSE)




