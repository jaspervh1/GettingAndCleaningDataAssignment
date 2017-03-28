# Getting And Cleaning Data Assignment
This repo contains the submission for the Getting and Cleaning Data programming assignment and consists of the following files -

## run_analysis.R
This R script does the following -

1. reads the test and train data sets
2. binds the subject, activity and measurements data for both the train and test data sets
3. updates the column names of the test and train data sets created in step 2 above with the values obtained from the features.txt file
4. merges the test and train data sets
5. creates a new data set taking the subject, activity columns and only those other columns that are the mean and standard deviation values of the measurements
6. updates the activity column of this filtered data with the activity labels as obtained from the 'activity_labels.txt' file
7. using the aggregate function, creates a data set containing the average of each mean and standard deviation variable grouped by activity and subject
8. updates the column names of this data set obtained in step 7 to meaningful names indicating that these are average values. This is done by appending the text 'Mean of' to the initial column names
9. writes the tidy data set thus obtained to a file called 'tidy_data.txt' within the current working directory    

## Codebook.md
This file describes the variables (columns) that are part of the output tidy data set and also the process by which the tidy data set is obtained from the base data set provided.  



