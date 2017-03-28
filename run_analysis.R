
  # update the data_set_path variable to point to the parent UCI HAR Dataset folder in which all the input data are stored
  data_set_path <- "./UCI HAR Dataset"  
  
  trainFilesPath <- paste0(data_set_path,"/train")
  testFilesPath <- paste0(data_set_path,"/test")
  
  # read the features data
  features_data <- read.table(paste0(data_set_path,"/features.txt"))
  
  # read the test data
  y_test_data <- read.table(paste0(testFilesPath,"/y_test.txt"))
  x_test_data <- read.table(paste0(testFilesPath,"/x_test.txt"))
  subject_test_data <- read.table(paste0(testFilesPath,"/subject_test.txt"))
  
  # bind the subject, activity and test data for the test set of files
  subject_activity_test_data <- cbind(subject_test_data,y_test_data)
  subject_activity_features_test_data <- cbind(subject_activity_test_data,x_test_data)
  
  # read the train data
  y_train_data <- read.table(paste0(trainFilesPath,"/y_train.txt"))
  x_train_data <- read.table(paste0(trainFilesPath,"/x_train.txt"))
  subject_train_data <- read.table(paste0(trainFilesPath,"/subject_train.txt"))
  
  # bind the subject, activity and train data for the train set of files
  subject_activity_train_data <- cbind(subject_train_data,y_train_data)
  subject_activity_features_train_data <- cbind(subject_activity_train_data,x_train_data)
  
  # set the column names for the test and train data set
  cols <- as.character(features_data[,c(2)]) 
  
  colnames(subject_activity_features_test_data) <- c("Subject", "Activity", cols)
  
  colnames(subject_activity_features_train_data) <- c("Subject", "Activity", cols)
  
  all_cols <- colnames(subject_activity_features_test_data)
  
  # bind the train and test data sets
  all_train_test_data <- rbind(subject_activity_features_train_data, subject_activity_features_test_data)
  
  # take the columns that have the mean and standard deviation measures
  filtered_data <- all_train_test_data[, c(1,2,grep(("*mean\\(|*std"), all_cols))]
  
  library("dplyr")
  
  # update the activities with proper labels
  filtered_data <- mutate(filtered_data, Activity = case_when(filtered_data$Activity == 1 ~ "WALKING", 
                                                              filtered_data$Activity == 2 ~ "WALKING_UPSTAIRS", 
                                                              filtered_data$Activity == 3 ~ "WALKING_DOWNSTAIRS",
                                                              filtered_data$Activity == 4 ~ "SITTING",
                                                              filtered_data$Activity == 5 ~ "STANDING",
                                                              filtered_data$Activity == 6 ~ "LAYING"))
  
  # summarize the data grouping by subject and activity and apply the mean function for all the measures
  summarized_data <- aggregate(filtered_data[,3:68], filtered_data[,1:2], FUN = mean)
  
  # the column names for the summarized and tidy data are set by taking the initial column names of the variables 
  # and appending the text 'mean of' to indicate the measures are averages of the variables
  all_cols <- (colnames(summarized_data))
  
  for(i in seq_along(all_cols)) {
    if(i > 2) 
      all_cols[i] <- paste0("Mean of ", all_cols[i])
  }
  
  colnames(summarized_data) <- all_cols
  
  # write the tidy dataset to a file
  write.table(summarized_data, file="./tidy_data.txt", row.names = FALSE)
  
