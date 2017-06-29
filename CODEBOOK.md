---
title: "Project Codebook"
author: "Jenny"
date: "07/02/2017"
---

## Codebook Description
This code book describes the modifications and updates that were done to the data from the Human Activity Recognition Using Smartphones Dataset. The code book also indicates all the variables and summaries calculated, along with units, and any other relevant information.

## Study Design

#### Collection of the raw data
The original data came in a zip file called `UCI HAR Dataset.zip`. This zip file contained:
1. `test` folder 
2. `train` folder
3. `activity_labels.txt` - Links the class labels with their activity name
4. `features.txt` - List of all features 
5. `features_info.txt` - Shows information about the variables used on the feature vector
6. `README.txt`

Within the TEST folder, there were 4 files:
1. `subject_test.txt` - Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
2. `X_test.txt` - This file contains the values (or observations) of the 30 subjects.
3. `y_test.txt` - This file contains the number corresponding to the activity label.
4. `Inertial Signals` - This file contains additional data that was not used in my calculations.

Within the TRAIN folder, there were 4 files:
1. `subject_train.txt` - Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
2. `X_train.txt` - This file contains the values (or observations) of the 30 subjects.
3. `y_train.txt` - This file contains the number corresponding to the activity label.
4. `Inertial Signals` - This file contains additional data that was not used in my calculations.

#### Description of the variables
* `Subject_ID` - Identifies the subject who performed the activity. Its range is from 1 to 30.
* `Activity` - Gives one of the six activities that was studied: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
* `Test_Or_Train` - Identifies which two sets (TEST file or TRAIN file) the data came from

##### Measurements
The measurements can be broken down into two categories:
 * Measurements derived in time - the body linear acceleration and angular velocity were derived in time to botain Jerk signals
 * Fast Fourier Transform (FFT)
##### Measurements derived _in time_
Average body acceleration in the X, Y, and Z directions:
* tBodyAcc.mean.X
* tBodyAcc.mean.Y
* tBodyAcc.mean.Z

Average gravity acceleration in the X, Y, and Z directions:
* tGravityAcc.mean.X
* tGravityAcc.mean.Y
* tGravityAcc.mean.Z

Average body Jerk acceleration in the X, Y, and Z directions:
* tBodyAccJerk.mean.X
* tBodyAccJerk.mean.Y
* tBodyAccJerk.mean.Z

Average body angular velocity in the X, Y, and Z directions:
* tBodyGyro.mean.X
* tBodyGyro.mean.Y
* tBodyGyro.mean.Z

Average body Jerk angular velocity in the X, Y, and Z directions:
* tBodyGyroJerk.mean.X
* tBodyGyroJerk.mean.Y
* tBodyGyroJerk.mean.Z

Average magnitude of body acceleration, gravity, Jerk acceleration, angular velocity, and Jerk angular velocity in the X, Y, and Z directions:
* tBodyAccMag.mean
* tGravityAccMag.mean
* tBodyAccJerkMag.mean
* tBodyGyroMag.mean
* tBodyGyroJerkMag.mean

Standard deviation of body acceleration in the X, Y, and Z directions:
* tBodyAcc.std.X
* tBodyAcc.std.Y
* tBodyAcc.std.Z

Standard deviation gravity acceleration in the X, Y, and Z directions:
* tGravityAcc.std.X
* tGravityAcc.std.Y
* tGravityAcc.std.Z

Standard deviation body Jerk acceleration in the X, Y, and Z directions:
* tBodyAccJerk.std.X
* tBodyAccJerk.std.Y
* tBodyAccJerk.std.Z

Standard deviation body angular velocity in the X, Y, and Z directions:
* tBodyGyro.std.X
* tBodyGyro.std.Y
* tBodyGyro.std.Z

Standard deviation body Jerk angular velocity in the X, Y, and Z directions:
* tBodyGyroJerk.std.X
* tBodyGyroJerk.std.Y
* tBodyGyroJerk.std.Z

Standard deviation magnitude of body acceleration, gravity, Jerk acceleration, angular velocity, and Jerk angular velocity in the X, Y, and Z directions:
* tBodyAccMag.std
* tGravityAccMag.std
* tBodyAccJerkMag.std
* tBodyGyroMag.std
* tBodyGyroJerkMag.std

##### Fast Fourier Transform (FFT)
Average body acceleration in the X, Y, and Z directions:
* fBodyAcc.mean.X
* fBodyAcc.mean.Y
* fBodyAcc.mean.Z

Weighted average of body acceleration in the X, Y, and Z directions:
* fBodyAcc.meanFreq.X
* fBodyAcc.meanFreq.Y
* fBodyAcc.meanFreq.Z

Average body Jerk acceleration in the X, Y, and Z directions:
* fBodyAccJerk.mean.X
* fBodyAccJerk.mean.Y
* fBodyAccJerk.mean.Z

Weighted average of body Jerk acceleration in the X, Y, and Z directions:
* fBodyAccJerk.meanFreq.X
* fBodyAccJerk.meanFreq.Y
* fBodyAccJerk.meanFreq.Z

Average body angular velocity in the X, Y, and Z directions:
* fBodyGyro.mean.X
* fBodyGyro.mean.Y
* fBodyGyro.mean.Z

Weighted average of body angular velocity in the X, Y, and Z directions:
* fBodyGyro.meanFreq.X
* fBodyGyro.meanFreq.Y
* fBodyGyro.meanFreq.Z

Average and weighted average magnitude of body acceleration, gravity, Jerk acceleration, angular velocity, and Jerk angular velocity in the X, Y, and Z directions:
* fBodyBodyAccMag.mean
* fBodyBodyAccMag.meanFreq
* fBodyBodyAccJerkMag.mean
* fBodyBodyAccJerkMag.meanFreq
* fBodyBodyGyroMag.mean
* fBodyBodyGyroMag.meanFreq
* fBodyBodyGyroJerkMag.mean
* fBodyBodyGyroJerkMag.meanFreq

Standard deviation body acceleration in the X, Y, and Z directions:
* fBodyAcc.std.X
* fBodyAcc.std.Y
* fBodyAcc.std.Z

Standard deviation body Jerk acceleration in the X, Y, and Z directions:
* fBodyAccJerk.std.X
* fBodyAccJerk.std.Y
* fBodyAccJerk.std.Z

Standard deviation body angular velocity in the X, Y, and Z directions:
* fBodyGyro.std.X
* fBodyGyro.std.Y
* fBodyGyro.std.Z

Standard deviation and weighted Standard deviation magnitude of body acceleration, gravity, Jerk acceleration, angular velocity, and Jerk angular velocity in the X, Y, and Z directions:
* fBodyBodyAccMag.std
* fBodyBodyAccJerkMag.std
* fBodyBodyGyroMag.std
* fBodyBodyGyroJerkMag.std








