# Author : Sandeep Kolte
# Date : 3/19/2015
# The data for the project: 
#         https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
#--------------------------------------------------
# Requirements :
# You should create one R script called run_analysis.R that does the following. 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#--------------------------------------------------
# The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.
#--------------------------------------------------
run_analysis <- function()
{
        # This script requires following three packages. If they are not available, they will be automatically downloaded and installed.
        if(!require(data.table)){install.packages("data.table")}
        if(!require(plyr)){install.packages("plyr")}
        if(!require(dplyr)){install.packages("dplyr")}
        
        # Folder with the dataset to be analyzed needs to be in same place as the script. 
        # Set Working Directory : ./UCI HAR DATASET/
        tryCatch({
                wd <- getwd()
                if(!grepl("UCI",wd))
                {
                        setwd("./UCI HAR DATASET")
                }
        }, error = function(e) {
                message("Error : The directory with 'run_analysis.R' script does not have 'UCI HAR DATASET'. Please place the script in the folder where 'UCI HAR DATASET' is located and try again.")
        }, finally = {
                # cleanup-code : Nothing here.
        })
        
        # Read 'features.txt'. This is the list of all features. There are 561 features.
        # These become column headers for the X_train and X_test data.
        features <- read.table("features.txt")
        featuresTable <- data.table(features)
        
        # Set column names of the features data table.
        setnames(featuresTable,1:2,c("ID", "Feature"))
        
        # Add two new columns to support additional features - 'Activity_ID' and 'Subject'.
        additionalFeatures <- data.table(ID=c(562,563), Feature=c("Activity_ID", "Subject"))

        # Get a list of all features by combining features read from the 'features.txt' and the additional features.
        allFeatures <- rbind(featuresTable,additionalFeatures)
        
        # Get a list of feature columns where feature name contains 'mean()' or 'std()', including the two new feature columns, 'Activity_ID' and 'Subject'.
        # Also, choosing to exclude any columns that have 'meanFreq' in the feature name. 
        filtered <- filter(allFeatures, grepl('mean()|std()|Activity_ID|Subject', allFeatures$Feature) & !grepl('(meanFreq)', allFeatures$Feature))
        
        # Read 'train/subject_train.txt' and 'test/subject_test.txt'. Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
        trainSubjects <- read.table("train/subject_train.txt")
        testSubjects <- read.table("test/subject_test.txt")
        totalSubjects <- rbind(trainSubjects, testSubjects)
        
        # Read 'activity_labels.txt'. This links the class labels with their activity name. Ultimately the script will replace 'Activity_ID' numeric values by the actual activity names.
        activities <- read.table("activity_labels.txt")
        activitiesTable <- data.table(activities)
        # Set column names of the activities data table.
        setnames(activitiesTable,1:2,c("Activity_ID", "Activity"))
        
        # Set 'Activity_ID' as a key so that it can be used when replacing the numeric values with the actual activity name.
        setkey(activitiesTable, "Activity_ID")
        
        # Read "train/y_train.txt" and "test/y_test.txt". This is the activities data. The range of values is from 1 to 6.
        Ytraining <- read.table("train/y_train.txt")
        Ytest <- read.table("test/y_test.txt")
        # Combine the training and test data.
        Ytotal <- rbind(Ytraining,Ytest)
        
        # Read 'train/X_train.txt' and "test/X_test.txt". These are the values depicting sensor measurements.
        Xtraining <- read.table("train/X_train.txt")
        Xtest <- read.table("test/X_test.txt")
        # Combine the training and test data.
        Xtotal <- rbind(Xtraining,Xtest)
        
        # Set all the column headers using the features table built earlier.
        colnames(Xtotal) <- features[[2]]
        
        # Assign the data for the two additional new feature columns, 'Activity_ID' and 'Subject'.
        # At this point, the dataset should have the combined data from training and test, 
        # all the columns should have headers and two new additional columns 'Activity_ID' and 'Subject' with data in them.
        Xtotal["Activity_ID"] <- Ytotal
        Xtotal["Subject"] <- totalSubjects
        
        # Select only the columns that are measurements on the mean and standard deviation.
        filteredX<- Xtotal %>% select(filtered$ID)
        filteredXTable <- data.table(filteredX)
        
        # Set 'Activity_ID' as a key so that it can be used when replacing the numeric values with the actual activity name.
        setkey(filteredXTable, "Activity_ID")
        
        # Merge the filtered data with activities data to get a new column with the actual activity name for each activity in the dataset.
        mergedData <- merge(filteredXTable,activitiesTable, by="Activity_ID")
        # Since 'Activity_ID' is no longer required, remove it.
        mergedData[,Activity_ID:=NULL]
        
        # Group the results by 'Subject' and 'Activity'.
        groupByColumns <- c("Subject", "Activity")
        dots <- lapply(groupByColumns, as.symbol)
        grouped <- mergedData %>% group_by_(.dots=groupByColumns) 
        
        # Create an independent tidy data set with the average of each variable for each activity and each subject
        myFinalData <- grouped %>% summarise_each(funs(mean)) 
        
        # Appropriately labels the data set with descriptive variable names. 
        # The description for each variable name is included in the Code Book.
        # Using "Google's R Style Guide" to name the variables. For more info : https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml#identifiers
        oldNames <- colnames(myFinalData)
        newNames <- getReadableColumnNames()
        setnames(myFinalData, oldNames, newNames)
        write.table(myFinalData, "tidydata.txt", row.names=FALSE) 
}

# This method simply returns a vector with the new modified descriptive variable names. 
# This code is refactored here to keep the main function concise.
getReadableColumnNames <- function()
{
        readableColumnNames <- 
                c(
                        "subject.identifier",
                        "activity",
                        "mean.X.time.bodymotion.accelerometer",
                        "mean.Y.time.bodymotion.accelerometer",
                        "mean.Z.time.bodymotion.accelerometer",
                        "std.dev.X.time.bodymotion.accelerometer",
                        "std.dev.Y.time.bodymotion.accelerometer",
                        "std.dev.Z.time.bodymotion.accelerometer",
                        "mean.X.time.gravitational.accelerometer",
                        "mean.Y.time.gravitational.accelerometer",
                        "mean.Z.time.gravitational.accelerometer",
                        "std.dev.X.time.gravitational.accelerometer",
                        "std.dev.Y.time.gravitational.accelerometer",
                        "std.dev.Z.time.gravitational.accelerometer",
                        "mean.X.time.bodymotion.jerk.accelerometer",
                        "mean.Y.time.bodymotion.jerk.accelerometer",
                        "mean.Z.time.bodymotion.jerk.accelerometer",
                        "std.dev.X.time.bodymotion.jerk.accelerometer",
                        "std.dev.Y.time.bodymotion.jerk.accelerometer",
                        "std.dev.Z.time.bodymotion.jerk.accelerometer",
                        "mean.X.time.bodymotion.accelerometer",
                        "mean.Y.time.bodymotion.accelerometer",
                        "mean.Z.time.bodymotion.accelerometer",
                        "std.dev.X.time.bodymotion.accelerometer",
                        "std.dev.Y.time.bodymotion.accelerometer",
                        "std.dev.Z.time.bodymotion.accelerometer",
                        "mean.X.time.bodymotion.jerk.accelerometer",
                        "mean.Y.time.bodymotion.jerk.accelerometer",
                        "mean.Z.time.bodymotion.jerk.accelerometer",
                        "std.dev.X.time.bodymotion.jerk.accelerometer",
                        "std.dev.Y.time.bodymotion.jerk.accelerometer",
                        "std.dev.Z.time.bodymotion.jerk.accelerometer",
                        "mean.time.magnitude.bodymotion.accelerometer",
                        "std.dev.time.magnitude.bodymotion.accelerometer",
                        "mean.time.magnitude.gravitational.accelerometer",
                        "std.dev.time.magnitude.gravitational.accelerometer",
                        "mean.time.magnitude.bodymotion.jerk.accelerometer",
                        "std.dev.time.magnitude.bodymotion.jerk.accelerometer",
                        "mean.time.magnitude.gravitational.gyroscope",
                        "std.dev.time.magnitude.gravitational.gyroscope",
                        "mean.time.magnitude.bodymotion.jerk.gyroscope",
                        "std.dev.time.magnitude.bodymotion.jerk.gyroscope",
                        "mean.X.freq.bodymotion.accelerometer",
                        "mean.Y.freq.bodymotion.accelerometer",
                        "mean.Z.freq.bodymotion.accelerometer",
                        "std.dev.X.freq.bodymotion.accelerometer",
                        "std.dev.Y.freq.bodymotion.accelerometer",
                        "std.dev.Z.freq.bodymotion.accelerometer",
                        "mean.X.freq.bodymotion.jerk.accelerometer",
                        "mean.Y.freq.bodymotion.jerk.accelerometer",
                        "mean.Z.freq.bodymotion.jerk.accelerometer",
                        "std.dev.X.freq.bodymotion.jerk.accelerometer",
                        "std.dev.Y.freq.bodymotion.jerk.accelerometer",
                        "std.dev.Z.freq.bodymotion.jerk.accelerometer",
                        "mean.X.freq.bodymotion.jerk.gyroscope",
                        "mean.Y.freq.bodymotion.jerk.gyroscope",
                        "mean.Z.freq.bodymotion.jerk.gyroscope",
                        "std.dev.X.freq.bodymotion.jerk.gyroscope",
                        "std.dev.Y.freq.bodymotion.jerk.gyroscope",
                        "std.dev.Z.freq.bodymotion.jerk.gyroscope",
                        "mean.freq.magnitude.bodymotion.accelerometer",
                        "std.dev.freq.magnitude.bodymotion.accelerometer",
                        "mean.freq.magnitude.bodymotion.jerk.accelerometer",
                        "std.dev.freq.magnitude.bodymotion.jerk.accelerometer",
                        "mean.freq.magnitude.bodymotion.gyroscope",
                        "std.dev.freq.magnitude.bodymotion.gyroscope",
                        "mean.freq.magnitude.bodymotion.jerk.gyroscope",
                        "std.dev.freq.magnitude.bodymotion.jerk.gyroscope"
                )
}
