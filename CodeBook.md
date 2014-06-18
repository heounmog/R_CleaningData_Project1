CodeBook
========

The data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.  


There are 81 variables in tidy data set. The description for each one is following.

* Activity : WALKING / WALKING_UPSTAIRS / WALKING_DOWNSTAIRS / SITTING / STANDING / LAYING

* Subject ID : ID for each person as a subject

The acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ)
(Note the 't' to indicate time domain signals). The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. The postfix of "mean()" is showing that the variable is a mean of the experiment's results, and the postfix of "std()" is showing that the variable is a standard deviation of the experiment's results.

*tBodyAcc-mean()-XYZ
*tGravityAcc-mean()-XYZ
*tBodyAccJerk-mean()-XYZ
*tBodyGyro-mean()-XYZ
*tBodyGyroJerk-mean()-XYZ
*tBodyAccMag-mean()
*tGravityAccMag-mean()
*tBodyAccJerkMag-mean()
*tBodyGyroMag-mean()
*tBodyGyroJerkMag-mean()
*fBodyAcc-mean()-XYZ
*fBodyAccJerk-mean()-XYZ
*fBodyGyro-mean()-XYZ
*fBodyAccMag-mean()
*fBodyAccJerkMag-mean()
*fBodyGyroMag-mean()
*fBodyGyroJerkMag-mean()
*tBodyAcc-std()-XYZ
*tGravityAcc-std()-XYZ
*tBodyAccJerk-std()-XYZ
*tBodyGyro-std()-XYZ
*tBodyGyroJerk-std()-XYZ
*tBodyAccMag-std()
*tGravityAccMag-std()
*tBodyAccJerkMag-std()
*tBodyGyroMag-std()
*tBodyGyroJerkMag-std()
*fBodyAcc-std()-XYZ
*fBodyAccJerk-std()-XYZ
*fBodyGyro-std()-XYZ
*fBodyAccMag-std()
*fBodyAccJerkMag-std()
*fBodyGyroMag-std()
*fBodyGyroJerkMag-std()

