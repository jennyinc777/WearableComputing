# Getting And Cleaning Data Project: Wearable Computing

Wearable computing has become a popular topic of discussion in the data science world. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. In this repository, you will find data that has been collected, cleaned, and manipulated to yield averages in a tidy data set.

This repository includes:

* `README.md` - A summary of the data and background information about the purpose of this project
* `CODEBOOK.md` - A codebook that indicates all of the variables and summaries calculated, along with units, and other relevant information
* `run_analysis.R` - A R script that gathers and cleans the original data set given

## The Data Set
The original data set is from the UCI Machine Learning Repository titled [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The experiment consisted of:
* 30 volunteers with an age bracket of 19-48 years.
* Each person performed 6 activities (walking, walking upstairs, walking downstairs, sitting, standing, laying).
* All volunteers used a Samsung Galaxy S II smartphone.
* Using the embedded accelerometer and gyroscope in the smartphone, the experimenters captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.

The data sets that were used were:
1. `X_test.txt` - Test set
2. `X_train.txt` - Train set
3. `Y_test.txt` - Test labels
4. `Y_train.txt` - Training labels
5. `features.txt` - List of all the features
6. `subject_test.txt` - Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
7. `subject_train.txt` - Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

## The Output
The output will be a data table that includes only the averages and standard deviations of the 3-axial linear acceleration and 3-axial angular velocity for both the accelerometer and gyroscope. The `run_analysis.R` script will:
1. Download and upzips the file folder
2. Reads the train and test data files
3. Merges the training and the test sets to create one data set
4. Uses descriptive activity names to name the activities in the data set
5. Appropriately labels the data set with descriptive variable names
6. For the data set in Step 4, create a second independent tide data set with the average of each variable for each activity and each subject

