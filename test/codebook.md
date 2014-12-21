Getting and collecting data course project code book

1. Variables

The dataset is comprised of the following variables following variables

Subject - The subject ID (1 - 30)
Activity - Description of the activity
Activity_Code - A numeric value used to specify the activity (1- 6).

All other variables (4 to 82) are averages taken over each subject and activity combination. Details of the raw data can be found in the "3. Details of the raw data" below.


 [1] "Subject"                         "Activity"                        "Activity_Code"                  
 [4] "tBodyAcc-meanX"                  "tBodyAcc-meanY"                  "tBodyAcc-meanZ"                 
 [7] "tBodyAcc-stdX"                   "tBodyAcc-stdY"                   "tBodyAcc-stdZ"                  
[10] "tGravityAcc-meanX"               "tGravityAcc-meanY"               "tGravityAcc-meanZ"              
[13] "tGravityAcc-stdX"                "tGravityAcc-stdY"                "tGravityAcc-stdZ"               
[16] "tBodyAccJerk-meanX"              "tBodyAccJerk-meanY"              "tBodyAccJerk-meanZ"             
[19] "tBodyAccJerk-stdX"               "tBodyAccJerk-stdY"               "tBodyAccJerk-stdZ"              
[22] "tBodyGyro-meanX"                 "tBodyGyro-meanY"                 "tBodyGyro-meanZ"                
[25] "tBodyGyro-stdX"                  "tBodyGyro-stdY"                  "tBodyGyro-stdZ"                 
[28] "tBodyGyroJerk-meanX"             "tBodyGyroJerk-meanY"             "tBodyGyroJerk-meanZ"            
[31] "tBodyGyroJerk-stdX"              "tBodyGyroJerk-stdY"              "tBodyGyroJerk-stdZ"             
[34] "tBodyAccMag-mean()"              "tBodyAccMag-std()"               "tGravityAccMag-mean()"          
[37] "tGravityAccMag-std()"            "tBodyAccJerkMag-mean()"          "tBodyAccJerkMag-std()"          
[40] "tBodyGyroMag-mean()"             "tBodyGyroMag-std()"              "tBodyGyroJerkMag-mean()"        
[43] "tBodyGyroJerkMag-std()"          "fBodyAcc-meanX"                  "fBodyAcc-meanY"                 
[46] "fBodyAcc-meanZ"                  "fBodyAcc-stdX"                   "fBodyAcc-stdY"                  
[49] "fBodyAcc-stdZ"                   "fBodyAcc-meanFreqX"              "fBodyAcc-meanFreqY"             
[52] "fBodyAcc-meanFreqZ"              "fBodyAccJerk-meanX"              "fBodyAccJerk-meanY"             
[55] "fBodyAccJerk-meanZ"              "fBodyAccJerk-stdX"               "fBodyAccJerk-stdY"              
[58] "fBodyAccJerk-stdZ"               "fBodyAccJerk-meanFreqX"          "fBodyAccJerk-meanFreqY"         
[61] "fBodyAccJerk-meanFreqZ"          "fBodyGyro-meanX"                 "fBodyGyro-meanY"                
[64] "fBodyGyro-meanZ"                 "fBodyGyro-stdX"                  "fBodyGyro-stdY"                 
[67] "fBodyGyro-stdZ"                  "fBodyGyro-meanFreqX"             "fBodyGyro-meanFreqY"            
[70] "fBodyGyro-meanFreqZ"             "fBodyAccMag-mean()"              "fBodyAccMag-std()"              
[73] "fBodyAccMag-meanFreq()"          "fBodyBodyAccJerkMag-mean()"      "fBodyBodyAccJerkMag-std()"      
[76] "fBodyBodyAccJerkMag-meanFreq()"  "fBodyBodyGyroMag-mean()"         "fBodyBodyGyroMag-std()"         
[79] "fBodyBodyGyroMag-meanFreq()"     "fBodyBodyGyroJerkMag-mean()"     "fBodyBodyGyroJerkMag-std()"     
[82] "fBodyBodyGyroJerkMag-meanFreq()"


2. The raw data contained data from 30 subjects performing 6 activities. Each variable was then averaged for each of these combinations

3. Details of the raw data:
(From the features_info data set provided with the assignment data)

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
meanFreq(): Weighted average of the frequency components to obtain a mean frequency