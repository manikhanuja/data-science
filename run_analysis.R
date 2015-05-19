##################### Download & unzip accelerometers Data ##################################
####################################################################################

downloadZipData <- function(url="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destinationFolder, fileName="run_analysis.zip", mode)
{
        print(fileName)
        setwd("D:\\R Workspace\\code")
        if(!file.exists(fileName)){
                download.file(url,fileName, mode = mode)
                list.files(destinationFolder)
                dateDownloaded <- date()
        }
        unzip(fileName, exdir = destinationFolder)
        list.files(destinationFolder)
}

################ Read Test files #######################

setwd("D:\\R Workspace\\code")
readX_Test <- read.table("run_analysis\\UCI HAR Dataset\\test\\X_test.txt")
dim(readX_Test)

readY_Test <- read.table("run_analysis\\UCI HAR Dataset\\test\\y_test.txt")
dim(readY_Test)

readSubject_Test <- read.table("run_analysis\\UCI HAR Dataset\\test\\subject_test.txt")
dim(readSubject_Test)

############### Read Train Files ######################

setwd("D:\\R Workspace\\code")
readX_Train <- read.table("run_analysis\\UCI HAR Dataset\\train\\X_train.txt")
dim(readX_Train)

readY_Train <- read.table("run_analysis\\UCI HAR Dataset\\train\\y_train.txt")
dim(readY_Train)

readSubject_Train <- read.table("run_analysis\\UCI HAR Dataset\\train\\subject_train.txt")
dim(readSubject_Train)

############## Read Feature & Activity file ######################

read_Features <- read.table("run_analysis\\UCI HAR Dataset\\features.txt")
dim(read_Features)

read_Activity_Lables <- read.table("run_analysis\\UCI HAR Dataset\\activity_labels.txt")
dim(read_Activity_Lables)
read_Activity_Lables

############# Step 1: Merges the training & tests sets to create one data set ########
############# a) Combine x_test and x_train ##########################################
combineDataSet <- rbind(readX_Train, readX_Test)
dim(combineDataSet)

dim(readX_Train)
dim(readX_Test)

############# b) Combine y_test and y_train in a similar order as x_test & x_train ####

combineDataSetY <- rbind(readY_Train, readY_Test)
dim(combineDataSetY)

############ c) Merge combineDataSetY with Activity lables data set ###################

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

############ d) Merger Subject Data #####################################

combineSubjectData <- rbind(readSubject_Train, readSubject_Test)
dim(combineSubjectData)
columnNameSub <- c("subject")
colnames(combineSubjectData) <- columnNameSub
tail(combineSubjectData)

############# Step 2: Extracts only the measurements on the mean & 
############# standard deviation for each measurement ############

############# a) Assign Column Names to combine data set ############
columnNames <- read_Features[,2]
head(columnNames)
colnames(combineDataSet) <- columnNames
names(combineDataSet)

############# b) Extract mean & standard deviation ###################
extractedDataSet <- combineDataSet[,grepl( "mean|std" , names( combineDataSet ) )]
names(extractedDataSet)

############# c) Dimensions of Extracted Data Set ############################
dim(extractedDataSet)

############# d) Dimensions of Combined Data Set ##############################
############# No. of rows of extracted data set should be equal to original combined data set
dim(combinedDataSet)

############ Step 3: Uses descriptive activity names to name the activities in the data set

extractedDataSet <- cbind(mergedDataY$activity_name,extractedDataSet)
extractedDataSet <- cbind(combineSubjectData, extractedDataSet)

head(extractedDataSet[, 1:5])
############ Step 4: Appropriately labels the data set with descriptive variable names
############ a) Rename columns ################################################





