
Code Book
=====================================


### Code Book for the data in tidy_data.txt created by run_analysis.R


This Code Book describes variables in tidy_data.txt file. Original preprocessed data have been obtained from UCI HAR Dataset.

UCI HAR Dataset is built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. For more details on th original data download the https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and read the README.txt file.

Cleaning the original dataset consisted of:

- merging train and test sets.
- Renaming variables in a tidier way.
- Selecting only the mean values and standard deviations of variables.
- Grouping variables according to observed subjects and their activities.
- Calculating the mean of all variables by subject and activity groups.

Cleaning is performed by run_analysis.R code.
There are 180 observations of 68 variables.

Following is the description of variables in tidy_data.txt:

#### 1. **subject**   :    integer 

There are 30 subjects. This is one of 2 variables used for grouping.

#### 2. **activity**  :    character     

This is one of 2 variables used for grouping.
           
There are 6 activities:

                - WALKING
                - WALKING_UPSTAIRS
                - WALKING_DOWNSTAIRS
                - SITTING
                - STANDING
                - LAYING
            
***The rest of the variables are normalized to have values between -1 and 1 (no units).***

#### 3. **mean(tBodyAcc-mean-X)**  : numeric           

Mean of time domain body acceleration mean along X-axis. 

#### 4. **mean(tBodyAcc-mean-Y)**   : numeric         

Mean of time domain body acceleration mean along Y-axis. 

#### 5. **mean(tBodyAcc-mean-Z)**   : numeric          

Mean of time domain body acceleration mean along Z-axis. 

#### 6. **mean(tGravityAcc-mean-X)**  : numeric       

Mean of time domain gravity acceleration mean along X-axis. 

#### 7. **mean(tGravityAcc-mean-Y)**   : numeric       

Mean of time domain gravity acceleration mean along Y-axis. 

#### 8. **mean(tGravityAcc-mean-Z)**   : numeric  

Mean of time domain gravity acceleration mean along Z-axis. 

#### 9. **mean(tBodyAccJerk-mean-X)**   : numeric      

Mean of time domain body acceleration Jerk signal mean along X-axis. 

#### 10. **mean(tBodyAccJerk-mean-Y)**    : numeric    

Mean of time domain body acceleration Jerk signal mean along Y-axis. 

#### 11. **mean(tBodyAccJerk-mean-Z)**    : numeric     

Mean of time domain body acceleration Jerk signal mean along Z-axis. 

#### 12. **mean(tBodyGyro-mean-X)**      : numeric     

Mean of time domain body gyroscope acceleration mean along X-axis. 

#### 13. **mean(tBodyGyro-mean-Y)**       : numeric     

Mean of time domain body gyroscope acceleration mean along Y-axis. 

#### 14. **mean(tBodyGyro-mean-Z)**       : numeric  

Mean of time domain body gyroscope acceleration mean along Z-axis. 

#### 15. **mean(tBodyGyroJerk-mean-X)**     : numeric   

Mean of time domain body gyroscope acceleration Jerk signal mean along X-axis. 

#### 16. **mean(tBodyGyroJerk-mean-Y)**      : numeric  

Mean of time domain body gyroscope acceleration Jerk signal mean along Y-axis. 

#### 17. **mean(tBodyGyroJerk-mean-Z)**      : numeric  

Mean of time domain body gyroscope acceleration Jerk signal mean along Z-axis. 

#### 18. **mean(tBodyAccMag-mean)**         : numeric  

Mean of time domain body acceleration magnitude mean. 

#### 19. **mean(tGravityAccMag-mean)**       : numeric  

Mean of time domain gravity acceleration magnitude mean. 

#### 20. **mean(tBodyAccJerkMag-mean)**      : numeric  

Mean of time domain body acceleration Jerk signal magnitude mean. 

#### 21. **mean(tBodyGyroMag-mean)**         : numeric  

Mean of time domain body gyroscope magnitude mean. 

#### 22. **mean(tBodyGyroJerkMag-mean)**     : numeric  

Mean of time domain body gyroscope Jerk signal magnitude mean. 

#### 23. **mean(fBodyAcc-mean-X)**           : numeric  

Mean of frequency domain body acceleration mean along X-axis. 

#### 24. **mean(fBodyAcc-mean-Y)**       : numeric  

Mean of frequency domain body acceleration mean along Y-axis. 

#### 25. **mean(fBodyAcc-mean-Z)**         : numeric    

Mean of frequency domain body acceleration mean along Z-axis. 

#### 26. **mean(fBodyAccJerk-mean-X)**     : numeric  

Mean of frequency domain body acceleration Jerk signal mean along X-axis. 

#### 27. **mean(fBodyAccJerk-mean-Y)**     : numeric    

Mean of frequency domain body acceleration Jerk signal mean along Y-axis. 

#### 28. **mean(fBodyAccJerk-mean-Z)**     : numeric  

Mean of frequency domain body acceleration Jerk signal mean along Z-axis. 

#### 29. **mean(fBodyGyro-mean-X)**         : numeric   

Mean of frequency domain body gyroscope acceleration mean along X-axis. 

#### 30. **mean(fBodyGyro-mean-Y)**         : numeric  

Mean of frequency domain body gyroscope acceleration mean along Y-axis. 

#### 31. **mean(fBodyGyro-mean-Z)**          : numeric  

Mean of frequency domain body gyroscope acceleration mean along Z-axis. 

#### 32. **mean(fBodyAccMag-mean)**       : numeric  

Mean of frequency domain body acceleration magnitude mean. 

#### 33. **mean(fBodyBodyAccJerkMag-mean)**  : numeric  

Mean of frequency domain body acceleration Jerk signal magnitude mean. 

#### 34. **mean(fBodyBodyGyroMag-mean)**      : numeric  

Mean of frequency domain body gyroscope acceleration magnitude mean. 

#### 35. **mean(fBodyBodyGyroJerkMag-mean)** : numeric  

Mean of frequency domain body gyroscope acceleration Jerk signal magnitude mean. 

#### 36. **mean(tBodyAcc-std-X)**        : numeric  

Mean of time domain body acceleration standard deviation along X-axis. 

#### 37. **mean(tBodyAcc-std-Y)**         : numeric     

Mean of time domain body acceleration standard deviation along Y-axis. 

#### 38. **mean(tBodyAcc-std-Z)**         : numeric  

Mean of time domain body acceleration standard deviation along Z-axis. 

#### 39. **mean(tGravityAcc-std-X)**       : numeric    

Mean of time domain gravity acceleration standard deviation along X-axis. 

#### 40. **mean(tGravityAcc-std-Y)**       : numeric  

Mean of time domain gravity acceleration standard deviation along Y-axis. 

#### 41. **mean(tGravityAcc-std-Z)**        : numeric   

Mean of time domain gravity acceleration standard deviation along Z-axis. 

#### 42. **mean(tBodyAccJerk-std-X)**       : numeric  

Mean of time domain body acceleration Jerk signal standard deviation along X-axis. 

#### 43. **mean(tBodyAccJerk-std-Y)**        : numeric  

Mean of time domain body acceleration Jerk signal standard deviation along Y-axis. 

#### 44. **mean(tBodyAccJerk-std-Z)**       : numeric  

Mean of time domain body acceleration Jerk signal standard deviation along Z-axis. 

#### 45. **mean(tBodyGyro-std-X)**          : numeric   

Mean of time domain body gyroscope acceleration standard deviation along X-axis. 

#### 46. **mean(tBodyGyro-std-Y)**        : numeric  

Mean of time domain body gyroscope acceleration standard deviation along Y-axis. 

#### 47. **mean(tBodyGyro-std-Z)**          : numeric   

Mean of time domain body gyroscope acceleration standard deviation along Z-axis. 

#### 48. **mean(tBodyGyroJerk-std-X)**     : numeric  

Mean of time domain body gyroscope acceleration Jerk signal standard deviation along X-axis. 

#### 49. **mean(tBodyGyroJerk-std-Y)**      : numeric   

Mean of time domain body gyroscope acceleration Jerk signal standard deviation along Y-axis. 

#### 50. **mean(tBodyGyroJerk-std-Z)**     : numeric  

Mean of time domain body gyroscope acceleration Jerk signal standard deviation along Z-axis. 

#### 51. **mean(tBodyAccMag-std)**         : numeric    

Mean of time domain body acceleration magnitude standard deviation. 

#### 52. **mean(tGravityAccMag-std)**      : numeric  

Mean of time domain gravity acceleration magnitude standard deviation. 

#### 53. **mean(tBodyAccJerkMag-std)**      : numeric   

Mean of time domain body acceleration Jerk signal magnitude standard deviation. 

#### 54. **mean(tBodyGyroMag-std)**        : numeric  

Mean of time domain body gyroscope acceleration magnitude standard deviation. 

#### 55. **mean(tBodyGyroJerkMag-std)**     : numeric   

Mean of time domain body gyroscope acceleration Jerk signal magnitude standard deviation. 

#### 56. **mean(fBodyAcc-std-X)**          : numeric  

Mean of frequency domain body acceleration standard deviation along X-axis. 

#### 57. **mean(fBodyAcc-std-Y)**           : numeric   

Mean of frequency domain body acceleration standard deviation along Y-axis. 

#### 58. **mean(fBodyAcc-std-Z)**          : numeric  

Mean of frequency domain body acceleration standard deviation along Z-axis. 

#### 59. **mean(fBodyAccJerk-std-X)**       : numeric   

Mean of frequency domain body acceleration Jerk signal standard deviation along X-axis. 

#### 60. **mean(fBodyAccJerk-std-Y)**      : numeric  

Mean of frequency domain body acceleration Jerk signal standard deviation along Y-axis. 

#### 61. **mean(fBodyAccJerk-std-Z)**       : numeric   

Mean of frequency domain body acceleration Jerk signal standard deviation along Z-axis. 

#### 62. **mean(fBodyGyro-std-X)**         : numeric  

Mean of frequency domain body gyroscope acceleration standard deviation along X-axis. 

#### 63. **mean(fBodyGyro-std-Y)**          : numeric   

Mean of frequency domain body gyroscope acceleration standard deviation along Y-axis. 

#### 64. **mean(fBodyGyro-std-Z)**          : numeric  

Mean of frequency domain body gyroscope acceleration standard deviation along Z-axis. 

#### 65. **mean(fBodyAccMag-std)**          : numeric   

Mean of frequency domain body acceleration magnitude standard deviation. 

#### 66. **mean(fBodyBodyAccJerkMag-std)**   : numeric  

Mean of frequency domain body acceleration Jerk signal magnitude standard deviation. 

#### 67. **mean(fBodyBodyGyroMag-std)**      : numeric  

Mean of frequency domain body gyroscope acceleration magnitude standard deviation. 

#### 68. **mean(fBodyBodyGyroJerkMag-std)**    : numeric  

Mean of frequency domain body gyroscope acceleration Jerk magnitude standard deviation. 

            
