# Getting and Cleaning Data Course Project
##### May 23, 2015
## Description for run_analysis.R script

 **Note:** Script is written on windows platform. To execute it on OSX, changes to path variables will be required. "\\\" needs to replaced with "/".
##### 1.  Download and Unzip Data
```
  url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  destinationFolder <- getwd()
  fileName <- "run_analysis.zip"
  
        print(fileName)
        if(!file.exists(fileName)){
                download.file(url,fileName, method = "curl")
                list.files(destinationFolder)
                dateDownloaded <- date()
        }
        unzip(fileName, exdir = destinationFolder)
        list.files(destinationFolder)
```
##### 2.   Read Test Files and find out dimensions of each of them

```
readX_Test <- read.table("run_analysis\\UCI HAR Dataset\\test\\X_test.txt")
dim(readX_Test)

readY_Test <- read.table("run_analysis\\UCI HAR Dataset\\test\\y_test.txt")
dim(readY_Test)

readSubject_Test <- read.table("run_analysis\\UCI HAR Dataset\\test\\subject_test.txt")
dim(readSubject_Test)

```
##### 3.  Read Training Files and find out dimensions of each of them

```
readX_Train <- read.table("run_analysis\\UCI HAR Dataset\\train\\X_train.txt")
dim(readX_Train)

readY_Train <- read.table("run_analysis\\UCI HAR Dataset\\train\\y_train.txt")
dim(readY_Train)

readSubject_Train <- read.table("run_analysis\\UCI HAR Dataset\\train\\subject_train.txt")
dim(readSubject_Train)
```
##### 4. Read Feature & Activity files - Print dimensions of each of them

```
read_Features <- read.table("run_analysis\\UCI HAR Dataset\\features.txt")
dim(read_Features)

read_Activity_Lables <- read.table("run_analysis\\UCI HAR Dataset\\activity_labels.txt")
dim(read_Activity_Lables)
read_Activity_Lables
```
##### 5. Merge the training & tests sets to create one data set 
###### a) combine X_test.txt & Y_test.txt - Print dimensions of all files including the combined file for validation purpose.

```
combineDataSet <- rbind(readX_Train, readX_Test)
dim(combineDataSet)

dim(readX_Train)
dim(readX_Test)
```
###### b) Combine y_test and y_train in a similar order as x_test & x_train

```
combineDataSetY <- rbind(readY_Train, readY_Test)
dim(combineDataSetY)

```
###### c) Merge combineDataSetY with Activity lables data set created in step b) above. Assign column names to files. Read the parts of all the interim files for validating the merge.

```
columnNamesAct <- c("activity_code", "activity_name")
colnames(read_Activity_Lables) <- columnNamesAct
read_Activity_Lables

columnNamesY <- c("activity_code")
colnames(combineDataSetY) <- columnNamesY
head(combineDataSetY)
dim(combineDataSetY)

mergedDataY <- merge(combineDataSetY, read_Activity_Lables, by = "activity_code", sort = "FALSE")
head(mergedDataY)
tail(mergedDataY)
dim(mergedDataY)
```
###### d) Merge Subject Data and assign column name subject to it.

```
combineSubjectData <- rbind(readSubject_Train, readSubject_Test)
dim(combineSubjectData)
columnNameSub <- c("subject")
colnames(combineSubjectData) <- columnNameSub
tail(combineSubjectData)

```
##### 6. Extracts only the measurements on the mean & standard deviation for each measurement

###### a) Assign Column Names to combine data set
```
columnNames <- read_Features[,2]
head(columnNames)
colnames(combineDataSet) <- columnNames
names(combineDataSet)

```
###### b) Extract mean & standard deviation - print columns of the extracted data set.

```
extractedDataSet <- combineDataSet[,grepl( "mean|std" , names( combineDataSet ) )]
names(extractedDataSet)
```
###### c) Validate no. of rows of extracted data set should be equal to original combined data set and columns of extracted data set should be less than the combined data set.

```
dim(extractedDataSet)
dim(combineDataSet)

```
##### 7. Uses descriptive activity names to name the activities in the data set - print the subset of the data to validate.

```
activity <- mergedDataY$activity_name
extractedDataSet <- cbind(activity,extractedDataSet)
extractedDataSet <- cbind(combineSubjectData, extractedDataSet)
head(extractedDataSet[, 1:5])

```

##### 8. Appropriately labels the data set with descriptive variable names

```
names(extractedDataSet)<-gsub("^t", "time", names(extractedDataSet))
names(extractedDataSet)<-gsub("^f", "frequency", names(extractedDataSet))
names(extractedDataSet)<-gsub("Acc", "Accelerometer", names(extractedDataSet))
names(extractedDataSet)<-gsub("Gyro", "Gyroscope", names(extractedDataSet))
names(extractedDataSet)<-gsub("Mag", "Magnitude", names(extractedDataSet))
names(extractedDataSet)<-gsub("BodyBody", "Body", names(extractedDataSet))

```
##### 9. Creates a second,independent tidy data set  & output it to a file

```
library(plyr)
tidy_data<-aggregate(. ~subject + activity, extractedDataSet, mean)
tidy_data<-tidy_data[order(tidy_data$subject,tidy_data$activity),]
write.table(tidy_data, file = "tidydata.txt",row.name=FALSE)

```

##### 10. Read the data set created using above script

```
address <- "https://s3.amazonaws.com/coursera-uploads/user-123bc56f167bc2d7ee7e3866/973501/asst-3/6c0b2650011111e59197e926d8e67b6a.txt"
address <- sub("^https", "http", address)
data <- read.table(url(address), header = TRUE) 
View(data)

```
