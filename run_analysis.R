run_analysis <- function(){
  ## Function run_analysis.R reads in data collected from the 
  ## accelerometers from the Samsung Galaxy S smartphone. 
  ## It groups mean value and standard deviation of signal variables,
  ## by subject and activity, and calculates their mean.
  ## Signals are: time and freauency domains, body and gravity accelaration, 
  ## Jerk and Jerk magnitude.
  ## For details on all the variables look at the CodeBook.md.
  
  ## data files to process:
  zip_file <- "UCI HAR Dataset.zip" 
  unzip(zip_file)    ## !!! do not use it if already unzipped !!!
  file_subject_test <- "./UCI\ HAR\ Dataset/test/subject_test.txt"
  file_subject_train <- "./UCI\ HAR\ Dataset/train/subject_train.txt"
  file_X_test <- "./UCI\ HAR\ Dataset/test/X_test.txt"
  file_X_train <- "./UCI\ HAR\ Dataset/train/X_train.txt"
  file_y_test <- "./UCI\ HAR\ Dataset/test/y_test.txt"
  file_y_train <- "./UCI\ HAR\ Dataset/train/y_train.txt"
  file_features <- "./UCI\ HAR\ Dataset/features.txt"
  file_activity_labels <- "./UCI\ HAR\ Dataset/activity_labels.txt"
  
  ## reading in and joining data
  features <- read.table(file_features, col.names=c("id","feature"), colClasses=c("integer","character"))
  
  labels_match <- read.table(file_activity_labels, col.names=c("id","label"), colClasses=c("integer","character"))
  
  ## join test and train subjects
  subject_test <- read.table(file_subject_test, col.names="subject")
  subject_train <- read.table(file_subject_train, col.names="subject")
  subject <- rbind(subject_test,subject_train)

  ## join test and train activity
  activity_test <- read.table(file_y_test, col.names="activity")
  activity_train <- read.table(file_y_train, col.names="activity")
  activity <- rbind(activity_test,activity_train)  
  activity$activity <- labels_match[activity$activity,2] ## give activities their names

  ## join test and train features
  X_test <- read.table(file_X_test)
  colnames(X_test)=features$feature   ## give columns their feature names
  X_train <- read.table(file_X_train)
  colnames(X_train)=features$feature  ## give columns their feature names
  X <- rbind(X_test,X_train)
  
  ## joing all columns with mean values and standard deviations
  ## exclude "angle" variables and "meanFreq" variables.
  mean_names <- features$feature[grep(c("mean()"),features$feature,fixed=TRUE)]
  std_names <- features$feature[grep(c("std()"),features$feature,fixed=TRUE)]
  mean <- subset(X, select=mean_names) 
  std <- subset(X, select=std_names) 

  ## join all data frames together
  data <- data.frame(subject, activity, mean, std, check.names=FALSE)
  
  ## load "dplyr" and continue with "tbl_df" data
  library("dplyr")
  data_tbl <- tbl_df(data)
  
  ## calculate mean for all variables by subject and by activity groups
  final_data <- group_by(data_tbl, subject, activity) %>% 
    summarise_each(funs(mean)) %>%
    ungroup()    

  ## rename column names in a tidier way:
  names(final_data)[3:length(names(final_data))] <- sub("\\(", "", names(final_data)[3:length(names(final_data))])
  names(final_data)[3:length(names(final_data))] <- sub("\\)", "", names(final_data)[3:length(names(final_data))])
  names(final_data)[3:length(names(final_data))] <- paste("mean(", names(final_data)[3:length(names(final_data))], ")",sep="")
  
  
  write.table(final_data, file="tidy_data.txt", row.name=FALSE)   ## save data  
  
}