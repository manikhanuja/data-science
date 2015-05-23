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

