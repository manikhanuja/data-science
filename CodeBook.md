# Code Book
## Human Activity Recognition Using Smartphones Data Set 

Abstract: Dataset is built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

| No. of Observations| No. of Attributes | Data Set Characteristics |
| ------------- |:-------------:| -----:|
| 10299    | 81 | Multivariate, Time-Series |

## Data Set Information
For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

## Attribute Information:
*subject:* the integer subject ID. There are 30 subjects within an age bracket of 19-48 years.   
*activity:* the string activity name
- Walking
- Walking Upstairs
- Walking Downstairs
- Sitting
- Standing
- Laying  

#### Measurement Means
All variables are the mean of a measurement for each subject and activity. This is indicated by the initial Mean in the variable name. All values are floating point numbers.

   - Time domain body acceleration mean along X, Y, and Z:   
     * *timeBodyAccelerometer-mean()-X*   
     * *timeBodyAccelerometer-mean()-Y*   
     * *timeBodyAccelerometer-mean()-Z*
   - Time domain body acceleration standard deviation along X, Y, and Z:
     * *timeBodyAccelerometer-std()-X*
     * *timeBodyAccelerometer-std()-Y*
     * *timeBodyAccelerometer-std()-Z*
   - Time domain gravity acceleration mean along X, Y, and Z:
     * *timeGravityAccelerometer-mean()-X*
     * *timeGravityAccelerometer-mean()-Y*
     * *timeGravityAccelerometer-mean()-Z*
   - Time domain gravity acceleration standard deviation along X, Y, and Z:
     * *timeGravityAccelerometer-std()-X*
     * *timeGravityAccelerometer-std()-Y*
     * *timeGravityAccelerometer-std()-Z*
   - Time domain body jerk mean along X, Y, and Z:
     * *timeBodyAccelerometerJerk-mean()-X*
     * *timeBodyAccelerometerJerk-mean()-Y*
     * *timeBodyAccelerometerJerk-mean()-Z*
   - Time domain body jerk standard deviation along X, Y, and Z:
     * *timeBodyAccelerometerJerk-std()-X*
     * *timeBodyAccelerometerJerk-std()-X*
     * *timeBodyAccelerometerJerk-std()-X*
   - Time domain gyroscope mean along X, Y, and Z:
     * *timeBodyGyroscope-mean()-X*
     * *timeBodyGyroscope-mean()-Y*
     * *timeBodyGyroscope-mean()-Z*
   - Time domain gyroscope standard deviation along X, Y, and Z:
     * *timeBodyGyroscope-std()-X*
     * *timeBodyGyroscope-std()-Y*
     * *timeBodyGyroscope-std()-Z*
   - Time domain gyroscope jerk mean along X, Y, and Z:
     * *timeBodyGyroscopeJerk-mean()-X*
     * *timeBodyGyroscopeJerk-mean()-Y*
     * *timeBodyGyroscopeJerk-mean()-Z*
   - Time domain gyroscope jerk standard deviation along X, Y, and Z:
     * *timeBodyGyroscopeJerk-std()-X*
     * *timeBodyGyroscopeJerk-std()-Y*
     * *timeBodyGyroscopeJerk-std()-Z*
   - Time domain body acceleration magnitude mean:
     * *timeBodyAccelerometerMagnitude-mean()*
   - Time domain body acceleration magnitude standard deviation:
     * *timeBodyAccelerometerMagnitude-std()*
   - Time domain gravity acceleration magnitude mean:
     * *timeGravityAccelerometerMagnitude-mean()*
   - Time domain gravity acceleration magnitude standard deviation:
      * *timeGravityAccelerometerMagnitude-std()*
   - Time domain body jerk magnitude mean:
     * *timeBodyAccelerometerJerkMagnitude-mean()*
   - Time domain body jerk magnitude standard deviation:
     * *timeBodyAccelerometerJerkMagnitude-std()*
   - Time domain gyroscope magnitude mean:
     * *timeBodyGyroscopeMagnitude-mean()*
   - Time domain gyroscope magnitude standard deviation:
     * *timeBodyGyroscopeMagnitude-std()*
   - Time domain gyroscope jerk magnitude mean:
     * *timeBodyGyroscopeJerkMagnitude-mean()*
   - Time domain gyroscope jerk magnitude standard deviation:
     * *timeBodyGyroscopeJerkMagnitude-std()*
   - Frequency domain body acceleration mean along X, Y, and Z:
     * *frequencyBodyAccelerometer-mean()-X*
     * *frequencyBodyAccelerometer-mean()-Y*
     * *frequencyBodyAccelerometer-mean()-Z*
   - Frequency domain body acceleration standard deviation along X, Y, and Z:
     * *frequencyBodyAccelerometer-std()-X*
     * *frequencyBodyAccelerometer-std()-Y*
     * *frequencyBodyAccelerometer-std()-Z*
   - Frequency domain body jerk mean along X, Y, and Z:
     * *frequencyBodyAccelerometerJerk-mean()-X*
     * *frequencyBodyAccelerometerJerk-mean()-Y*
     * *frequencyBodyAccelerometerJerk-mean()-Z*
   - Frequency domain body jerk standard deviation along X, Y, and Z:
     * *frequencyBodyAccelerometerJerk-std()-X*
     * *frequencyBodyAccelerometerJerk-std()-Y*
     * *frequencyBodyAccelerometerJerk-std()-Z*
   - Frequency domain gyroscope mean along X, Y, and Z:
     * *frequencyBodyGyroscope-mean()-X*
     * *frequencyBodyGyroscope-mean()-Y*
     * *frequencyBodyGyroscope-mean()-Z*
   - Frequency domain gyroscope standard deviation along X, Y, and Z:
     * *frequencyBodyGyroscope-std()-X*
     * *frequencyBodyGyroscope-std()-Y*
     * *frequencyBodyGyroscope-std()-Z*
   - Frequency domain body acceleration magnitude mean:
     * *frequencyBodyAccelerometerMagnitude-mean()*
   - Frequency domain body acceleration magnitude standard deviation:
     * *frequencyBodyAccelerometerMagnitude-std()*
   - Frequency domain body jerk magnitude mean:
     * *frequencyBodyAccelerometerJerkMagnitude-mean()*
   - Frequency domain body jerk magnitude standard deviation:
     * *frequencyBodyAccelerometerJerkMagnitude-std()*
   - Frequency domain gyroscope magnitude mean:
     * *frequencyBodyGyroscopeMagnitude-mean()*
   - Frequency domain gyroscope magnitude standard deviation:
     * *frequencyBodyGyroscopeMagnitude-std()*
   - Frequency domain gyroscope jerk magnitude mean:
     * *frequencyBodyGyroscopeJerkMagnitude-mean()*
   - Frequency domain gyroscope jerk magnitude standard deviation:
     * *frequencyBodyGyroscopeJerkMagnitude-std()*
   - Frequeny domain body acceleration mean frequency along X, Y, and Z:
     * *frequencyBodyAccelerometerJerk-meanFreq()-X*
     * *frequencyBodyAccelerometerJerk-meanFreq()-Y*
     * *frequencyBodyAccelerometerJerk-meanFreq()-Z*
   - Frequency domain body acceleration magnitude mean frequency:
     * *frequencyBodyAccelerometerMagnitude-meanFreq()*
   - Frequency domain body jerk magnitude mean frequency:
     * *frequencyBodyAccelerometerJerkMagnitude-meanFreq()*
   - Frequency domain gyroscope magnitude mean frequency:
     * *frequencyBodyGyroscopeJerkMagnitude-meanFreq()*



