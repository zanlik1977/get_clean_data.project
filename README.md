 get_clean_data.project
======================

###  Course project for the Getting and Cleaning Data coursera course.

This project consists of getting and cleaning data built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

First download UCI HAR Dataset.zip file from 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
to your working directory.

Once unzipped, UCI HAR folder consists of the following files that have to be process:

- activity_labels.txt   : labels of six activities.
- features.txt        : labels of 561 variables of the feature vector. 
- test and train folders consisting of the following files:

                - subject_test.txt        - subject_train.txt
                - X_test.txt              - X_train.txt
                - y_test.txt              - y_train.txt
                
Following description is true for both training and testing sets.
"X"" file consists of observations for 561 variables for subjects during the activities.
"Subject" file consists of the ID of the subjects.
"y" file consists of ID of activities.

There are other files and folders in the dataset which will not be used in this project. For more details on these, please read the README.txt and feature_info.txt files in UCI HAS folder.                

In this project, data from the training set and testing set have to be merged into one tidy dataset with calculated mean values for every variable by subject and activity. Appropriate names should also be given ot the columns. All of this is done in run_analysis.R code.

run_analysis.R reads in all of the files described above.

Code first merges subject files from the train and test data sets into one new dataframe with 10299 observations of 1 integer variable named "subject".

Next, "y" files are merged into one new dataframe where ID values are replaced with the labels from activity_labels.txt file. At the end, there are 10299 observations of 1 character string variable which describes activities of subjects in the subject dataframe.

"X" files are merged next. The columns were given names of the variables from feature.txt file. For the purposes of the assignment only variables with mean and standard deviation values are selected from this new data set. This excludes angle variables and meanFreq variables.

At the end, all these dataframes are merged together into one dataframe with "subject", "activity" columns and 66 columns with observed variables.

In the final part of the assignment, dataframe is grouped by "subject" and "activity" variables. For each group mean of all other variables has been calculated, and results have been summarized into the final dataframe with 2 group variable and 180 mean values of 66 observed variables.

Names of the columns have been made tidier and final dataframe saved as tidy_data.txt

Detailed description of the variables in the tidy_data.txt and how they have been processes and transformed is in the CodeBook.md file submmited together with README.md and run_analysis.R.







                