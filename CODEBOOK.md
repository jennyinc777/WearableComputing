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

#### Measurements
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

##### Fast Fourier Transform (FFT)
Average body acceleration in the X, Y, and Z directions:
* tBodyAcc.mean.X
* tBodyAcc.mean.Y
* tBodyAcc.mean.Z

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






