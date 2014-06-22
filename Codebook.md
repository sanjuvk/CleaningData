## Codebook for the final tidy data file, tidyData.txt 

*Subject_ID: ID of the subjects whose data were collected. Valid values in the range of 1-30 
*Activity_Name: Activity name being recorded. Valid value are 
"LAYING", "SITTING", "STANDING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS"

###The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

###Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

###Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

###These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

### The following variables denotes the average of the data value observed per subject ID and activity name combination. 

*Avg_tBodyAcc-mean()-X":               
*Avg_tBodyAcc-mean()-Y"               
*Avg_tBodyAcc-mean()-Z"               
*Avg_tBodyAcc-std()-X"               
*Avg_tBodyAcc-std()-Y"                
*Avg_tBodyAcc-std()-Z"                
*Avg_tGravityAcc-mean()-X"           
*Avg_tGravityAcc-mean()-Y"            
*Avg_tGravityAcc-mean()-Z"            
*Avg_tGravityAcc-std()-X"            
*Avg_tGravityAcc-std()-Y"             
*Avg_tGravityAcc-std()-Z"             
*Avg_tBodyAccJerk-mean()-X"          
*Avg_tBodyAccJerk-mean()-Y"           
*Avg_tBodyAccJerk-mean()-Z"           
*Avg_tBodyAccJerk-std()-X"           
*Avg_tBodyAccJerk-std()-Y"            
*Avg_tBodyAccJerk-std()-Z"            
*Avg_tBodyGyro-mean()-X"             
*Avg_tBodyGyro-mean()-Y"              
*Avg_tBodyGyro-mean()-Z"              
*Avg_tBodyGyro-std()-X"              
*Avg_tBodyGyro-std()-Y"               
*Avg_tBodyGyro-std()-Z"               
*Avg_tBodyGyroJerk-mean()-X"         
*Avg_tBodyGyroJerk-mean()-Y"          
*Avg_tBodyGyroJerk-mean()-Z"          
*Avg_tBodyGyroJerk-std()-X"          
*Avg_tBodyGyroJerk-std()-Y"           
*Avg_tBodyGyroJerk-std()-Z"           
*Avg_tBodyAccMag-mean()"             
*Avg_tBodyAccMag-std()"               
*Avg_tGravityAccMag-mean()"           
*Avg_tGravityAccMag-std()"           
*Avg_tBodyAccJerkMag-mean()"          
*Avg_tBodyAccJerkMag-std()"           
*Avg_tBodyGyroMag-mean()"            
*Avg_tBodyGyroMag-std()"              
*Avg_tBodyGyroJerkMag-mean()"         
*Avg_tBodyGyroJerkMag-std()"         
*Avg_fBodyAcc-mean()-X"               
*Avg_fBodyAcc-mean()-Y"               
*Avg_fBodyAcc-mean()-Z"              
*Avg_fBodyAcc-std()-X"                
*Avg_fBodyAcc-std()-Y"                
*Avg_fBodyAcc-std()-Z"               
*Avg_fBodyAcc-meanFreq()-X"           
*Avg_fBodyAcc-meanFreq()-Y"           
*Avg_fBodyAcc-meanFreq()-Z"          
*Avg_fBodyAccJerk-mean()-X"           
*Avg_fBodyAccJerk-mean()-Y"           
*Avg_fBodyAccJerk-mean()-Z"          
*Avg_fBodyAccJerk-std()-X"            
*Avg_fBodyAccJerk-std()-Y"            
*Avg_fBodyAccJerk-std()-Z"           
*Avg_fBodyAccJerk-meanFreq()-X"       
*Avg_fBodyAccJerk-meanFreq()-Y"       
*Avg_fBodyAccJerk-meanFreq()-Z"      
*Avg_fBodyGyro-mean()-X"              
*Avg_fBodyGyro-mean()-Y"              
*Avg_fBodyGyro-mean()-Z"             
*Avg_fBodyGyro-std()-X"               
*Avg_fBodyGyro-std()-Y"               
*Avg_fBodyGyro-std()-Z"              
*Avg_fBodyGyro-meanFreq()-X"          
*Avg_fBodyGyro-meanFreq()-Y"          
*Avg_fBodyGyro-meanFreq()-Z"         
*Avg_fBodyAccMag-mean()"              
*Avg_fBodyAccMag-std()"               
*Avg_fBodyAccMag-meanFreq()"         
*Avg_fBodyBodyAccJerkMag-mean()"      
*Avg_fBodyBodyAccJerkMag-std()"       
*Avg_fBodyBodyAccJerkMag-meanFreq()" 
*Avg_fBodyBodyGyroMag-mean()"         
*Avg_fBodyBodyGyroMag-std()"          
*Avg_fBodyBodyGyroMag-meanFreq()"    
*Avg_fBodyBodyGyroJerkMag-mean()"     
*Avg_fBodyBodyGyroJerkMag-std()"      
*Avg_fBodyBodyGyroJerkMag-meanFreq()"
