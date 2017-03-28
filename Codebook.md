# Codebook
The tidy data set submitted as part of the Getting and Cleaning Data Assignment consists of average values of 66 mean and standard deviation measurements grouped by Subject and Activity.
This codebook contains descriptions of the columns that are part of the submitted data set and details of the process by which the data set was derived.

To start with, the source data set is obtained from the website http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. This represents data collected from the accelerometers from the Samsung Galaxy S smartphone. This source data set contains two sets of data - training and test data. It also has the list of features which were measured, the values of those features for both the training and test data, the list of subjects who took part in the study, the labels of the various activities and their corresponding codes.

First, for the test data set, the subject, activity and measurements data are read from the 'subject_test.txt', 'y_test.txt' and 'X-test.txt' files respectively. These are then bound together using the cbind operation. The same steps are done for the train data set as well. The column names of the test and train data set obtained above are now set taking the values from the 'features.txt' file. Subsequently the test and train data sets are merged using the rbind operation. From this combined dataset that has been created, only the columns that correspond to the mean or standard deviation of the measurements are taken along with the subject and activity column information. This is achieved by subsetting the data set taking all rows and only the subject and  activity columns and only those other columns that match the pattern "*mean\\(|*std". The activity column of this filtered data set is updated with the activity labels as obtained from the 'activity_labels.txt' file. From this data set, the average of each measurement is now calculated grouped by subject and activity using the aggregate function. The columns of the new data set thus obtained are labelled appropriately appending the text 'Mean of' to the original column name (the name of the feature) to indicate these are average values. Finally this tidy data set is written to a file.

Given below is the list of columns which are part of the tidy data set obtained by the process described above.            

| Column                   | Data Type   		| Description |
|--------------------------|--------------------|-------------|
| Subject				   |	int				| The id of the subject who participated in the study |
| Activity				   |    chr				| A description of the Activity against which the measures were calculated. Allowed values are 'WALKING', 'WALKING_UPSTAIRS', 'WALKING_DOWNSTAIRS', 'SITTING', 'STANDING' and 'LAYING'|
| Mean of tBodyAcc-mean()-X|    numeric			| Mean of the tBodyAcc-mean()-X measurement for this activity and subject|
| Mean of tBodyAcc-mean()-Y|    numeric			| Mean of the tBodyAcc-mean()-Y measurement for this activity and subject|
| Mean of tBodyAcc-mean()-Z|    numeric			| Mean of the tBodyAcc-mean()-Z measurement for this activity and subject|
| Mean of tBodyAcc-std()-X |    numeric			| Mean of the tBodyAcc-std()-X measurement for this activity and subject|
| Mean of tBodyAcc-std()-Y |    numeric			| Mean of the tBodyAcc-std()-Y measurement for this activity and subject|
| Mean of tBodyAcc-std()-Z |    numeric			| Mean of the tBodyAcc-std()-Z measurement for this activity and subject|
| Mean of tGravityAcc-mean()-X |    numeric			| Mean of the tGravityAcc-mean()-X measurement for this activity and subject|
| Mean of tGravityAcc-mean()-Y |    numeric			| Mean of the tGravityAcc-mean()-Y measurement for this activity and subject|
| Mean of tGravityAcc-mean()-Z |    numeric			| Mean of the tGravityAcc-mean()-Z measurement for this activity and subject|
| Mean of tGravityAcc-std()-X |    numeric			| Mean of the tGravityAcc-std()-X measurement for this activity and subject|
| Mean of tGravityAcc-std()-Y |    numeric			| Mean of the tGravityAcc-std()-Y measurement for this activity and subject|
| Mean of tGravityAcc-std()-Z |    numeric			| Mean of the tGravityAcc-std()-Z measurement for this activity and subject|
| Mean of tBodyAccJerk-mean()-X |    numeric			| Mean of the tBodyAccJerk-mean()-X measurement for this activity and subject|
| Mean of tBodyAccJerk-mean()-Y |    numeric			| Mean of the tBodyAccJerk-mean()-Y measurement for this activity and subject|
| Mean of tBodyAccJerk-mean()-Z |    numeric			| Mean of the tBodyAccJerk-mean()-Z measurement for this activity and subject|
| Mean of tBodyAccJerk-std()-X |    numeric			| Mean of the tBodyAccJerk-std()-X measurement for this activity and subject|
| Mean of tBodyAccJerk-std()-Y |    numeric			| Mean of the tBodyAccJerk-std()-Y measurement for this activity and subject|
| Mean of tBodyAccJerk-std()-Z |    numeric			| Mean of the tBodyAccJerk-std()-Z measurement for this activity and subject|
| Mean of tBodyGyro-mean()-X |    numeric			| Mean of the tBodyGyro-mean()-X measurement for this activity and subject|
| Mean of tBodyGyro-mean()-Y |    numeric			| Mean of the tBodyGyro-mean()-Y measurement for this activity and subject|
| Mean of tBodyGyro-mean()-Z |    numeric			| Mean of the tBodyGyro-mean()-Z measurement for this activity and subject|
| Mean of tBodyGyro-std()-X |    numeric			| Mean of the tBodyGyro-std()-X measurement for this activity and subject|
| Mean of tBodyGyro-std()-Y |    numeric			| Mean of the tBodyGyro-std()-Y measurement for this activity and subject|
| Mean of tBodyGyro-std()-Z |    numeric			| Mean of the tBodyGyro-std()-Z measurement for this activity and subject|							
| Mean of tBodyGyroJerk-mean()-X |    numeric			| Mean of the tBodyGyroJerk-mean()-X measurement for this activity and subject|
| Mean of tBodyGyroJerk-mean()-Y |    numeric			| Mean of the tBodyGyroJerk-mean()-Y measurement for this activity and subject|
| Mean of tBodyGyroJerk-mean()-Z |    numeric			| Mean of the tBodyGyroJerk-mean()-Z measurement for this activity and subject|
| Mean of tBodyGyroJerk-std()-X |    numeric			| Mean of the tBodyGyroJerk-std()-X measurement for this activity and subject|
| Mean of tBodyGyroJerk-std()-Y |    numeric			| Mean of the tBodyGyroJerk-std()-Y measurement for this activity and subject|
| Mean of tBodyGyroJerk-std()-Z |    numeric			| Mean of the tBodyGyroJerk-std()-Z measurement for this activity and subject|
| Mean of tBodyAccMag-mean() |    numeric			| Mean of the tBodyAccMag-mean() measurement for this activity and subject|
| Mean of tBodyAccMag-std() |    numeric			| Mean of the tBodyAccMag-std() measurement for this activity and subject|
| Mean of tGravityAccMag-mean() |    numeric			| Mean of the tGravityAccMag-mean() measurement for this activity and subject|
| Mean of tGravityAccMag-std() |    numeric			| Mean of the tGravityAccMag-std() measurement for this activity and subject|
| Mean of tBodyAccJerkMag-mean() |    numeric			| Mean of the tBodyAccJerkMag-mean() measurement for this activity and subject|
| Mean of tBodyAccJerkMag-std() |    numeric			| Mean of the tBodyAccJerkMag-std() measurement for this activity and subject|
| Mean of tBodyGyroMag-mean() |    numeric			| Mean of the tBodyGyroMag-mean() measurement for this activity and subject|
| Mean of tBodyGyroMag-std() |    numeric			| Mean of the tBodyGyroMag-std() measurement for this activity and subject|
| Mean of tBodyGyroJerkMag-mean() |    numeric			| Mean of the tBodyGyroJerkMag-mean() measurement for this activity and subject|
| Mean of tBodyGyroJerkMag-std() |    numeric			| Mean of the tBodyGyroJerkMag-std() measurement for this activity and subject|
| Mean of fBodyAcc-mean()-X |    numeric			| Mean of the fBodyAcc-mean()-X measurement for this activity and subject|
| Mean of fBodyAcc-mean()-Y |    numeric			| Mean of the fBodyAcc-mean()-Y measurement for this activity and subject|
| Mean of fBodyAcc-mean()-Z |    numeric			| Mean of the fBodyAcc-mean()-Z measurement for this activity and subject|
| Mean of fBodyAcc-std()-X |    numeric			| Mean of the fBodyAcc-std()-X measurement for this activity and subject|
| Mean of fBodyAcc-std()-Y |    numeric			| Mean of the fBodyAcc-std()-Y measurement for this activity and subject|
| Mean of fBodyAcc-std()-Z |    numeric			| Mean of the fBodyAcc-std()-Z measurement for this activity and subject|
| Mean of fBodyAccJerk-mean()-X |    numeric			| Mean of the fBodyAccJerk-mean()-X measurement for this activity and subject|
| Mean of fBodyAccJerk-mean()-Y |    numeric			| Mean of the fBodyAccJerk-mean()-Y measurement for this activity and subject|
| Mean of fBodyAccJerk-mean()-Z |    numeric			| Mean of the fBodyAccJerk-mean()-Z measurement for this activity and subject|
| Mean of fBodyAccJerk-std()-X |    numeric			| Mean of the fBodyAccJerk-std()-X measurement for this activity and subject|
| Mean of fBodyAccJerk-std()-Y |    numeric			| Mean of the fBodyAccJerk-std()-Y measurement for this activity and subject|
| Mean of fBodyAccJerk-std()-Z |    numeric			| Mean of the fBodyAccJerk-std()-Z measurement for this activity and subject|
| Mean of fBodyGyro-mean()-X |    numeric			| Mean of the fBodyGyro-mean()-X measurement for this activity and subject|
| Mean of fBodyGyro-mean()-Y |    numeric			| Mean of the fBodyGyro-mean()-Y measurement for this activity and subject|
| Mean of fBodyGyro-mean()-Z |    numeric			| Mean of the fBodyGyro-mean()-Z measurement for this activity and subject|
| Mean of fBodyGyro-std()-X |    numeric			| Mean of the fBodyGyro-std()-X measurement for this activity and subject|
| Mean of fBodyGyro-std()-Y |    numeric			| Mean of the fBodyGyro-std()-Y measurement for this activity and subject|
| Mean of fBodyGyro-std()-Z |    numeric			| Mean of the fBodyGyro-std()-Z measurement for this activity and subject|
| Mean of fBodyAccMag-mean() |    numeric			| Mean of the fBodyAccMag-mean() measurement for this activity and subject|
| Mean of fBodyAccMag-std() |    numeric			| Mean of the fBodyAccMag-std() measurement for this activity and subject|
| Mean of fBodyBodyAccJerkMag-mean() |    numeric			| Mean of the fBodyBodyAccJerkMag-mean() measurement for this activity and subject|
| Mean of fBodyBodyAccJerkMag-std() |    numeric			| Mean of the fBodyBodyAccJerkMag-std() measurement for this activity and subject|
| Mean of fBodyBodyGyroMag-mean() |    numeric			| Mean of the fBodyBodyGyroMag-mean() measurement for this activity and subject|
| Mean of fBodyBodyGyroMag-std() |    numeric			| Mean of the fBodyBodyGyroMag-std() measurement for this activity and subject|
| Mean of fBodyBodyGyroJerkMag-mean() |    numeric			| Mean of the fBodyBodyGyroJerkMag-mean() measurement for this activity and subject|
| Mean of fBodyBodyGyroJerkMag-std() |    numeric			| Mean of the fBodyBodyGyroJerkMag-std() measurement for this activity and subject|