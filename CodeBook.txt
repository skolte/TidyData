This is the code book for the class project for Getting and Cleaning Data Course. The purpose of the project is to demonstrate  ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

This code book explains the following:
Information about the variables, including clarification of units if any, in the dataset.
Information about the summary choices made.
Information about the experimental design.

Code Book 
This section contains information about the variables and their description as they are used by original dataset and the tidy dataset. It also includes clarifications of units used when necessary.

Variable Names from Tidy Dataset
Following guidelines were observed when naming the variables in the tidy dataset. A unique, unambiguous name has been given to each variable. Variables names consist of one string ONLY, consisting of letters and dots (.). The form for variable names is all lower case letters and words separated with dots (variable.name). Spaces have not been used in variables names similar to most other statistical programs, even if data entry programs like Excel or Access will allow this. Variables names have been entered at the top of each column. Variables names are chosen to be long enough to be meaningful, but short enough to be easy to handle. Variables labels (below) clarify what is coded in each variable more substantially. 

The tidy dataset has following 66 variables:

subject.identifier
activity 
mean.X.time.bodymotion.accelerometer
mean.Y.time.bodymotion.accelerometer
mean.Z.time.bodymotion.accelerometer
std.dev.X.time.bodymotion.accelerometer
std.dev.Y.time.bodymotion.accelerometer
std.dev.Z.time.bodymotion.accelerometer
mean.X.time.gravitational.accelerometer
mean.Y.time.gravitational.accelerometer
mean.Z.time.gravitational.accelerometer
std.dev.X.time.gravitational.accelerometer
std.dev.Y.time.gravitational.accelerometer
std.dev.Z.time.gravitational.accelerometer
mean.X.time.bodymotion.jerk.accelerometer
mean.Y.time.bodymotion.jerk.accelerometer
mean.Z.time.bodymotion.jerk.accelerometer
std.dev.X.time.bodymotion.jerk.accelerometer
std.dev.Y.time.bodymotion.jerk.accelerometer
std.dev.Z.time.bodymotion.jerk.accelerometer
mean.X.time.bodymotion.accelerometer
mean.Y.time.bodymotion.accelerometer
mean.Z.time.bodymotion.accelerometer
std.dev.X.time.bodymotion.accelerometer
std.dev.Y.time.bodymotion.accelerometer
std.dev.Z.time.bodymotion.accelerometer
mean.X.time.bodymotion.jerk.accelerometer
mean.Y.time.bodymotion.jerk.accelerometer
mean.Z.time.bodymotion.jerk.accelerometer
std.dev.X.time.bodymotion.jerk.accelerometer
std.dev.Y.time.bodymotion.jerk.accelerometer
std.dev.Z.time.bodymotion.jerk.accelerometer
mean.time.magnitude.bodymotion.accelerometer
std.dev.time.magnitude.bodymotion.accelerometer
mean.time.magnitude.gravitational.accelerometer
std.dev.time.magnitude.gravitational.accelerometer
mean.time.magnitude.bodymotion.jerk.accelerometer
std.dev.time.magnitude.bodymotion.jerk.accelerometer
mean.time.magnitude.gravitational.gyroscope
std.dev.time.magnitude.gravitational.gyroscope
mean.time.magnitude.bodymotion.jerk.gyroscope
std.dev.time.magnitude.bodymotion.jerk.gyroscope
mean.X.freq.bodymotion.accelerometer
mean.Y.freq.bodymotion.accelerometer
mean.Z.freq.bodymotion.accelerometer
std.dev.X.freq.bodymotion.accelerometer
std.dev.Y.freq.bodymotion.accelerometer
std.dev.Z.freq.bodymotion.accelerometer
mean.X.freq.bodymotion.jerk.accelerometer
mean.Y.freq.bodymotion.jerk.accelerometer
mean.Z.freq.bodymotion.jerk.accelerometer
std.dev.X.freq.bodymotion.jerk.accelerometer
std.dev.Y.freq.bodymotion.jerk.accelerometer
std.dev.Z.freq.bodymotion.jerk.accelerometer
mean.X.freq.bodymotion.jerk.gyroscope
mean.Y.freq.bodymotion.jerk.gyroscope
mean.Z.freq.bodymotion.jerk.gyroscope
std.dev.X.freq.bodymotion.jerk.gyroscope
std.dev.Y.freq.bodymotion.jerk.gyroscope
std.dev.Z.freq.bodymotion.jerk.gyroscope
mean.freq.magnitude.bodymotion.accelerometer
std.dev.freq.magnitude.bodymotion.accelerometer
mean.freq.magnitude.bodymotion.jerk.accelerometer
std.dev.freq.magnitude.bodymotion.jerk.accelerometer
mean.freq.magnitude.bodymotion.gyroscope
std.dev.freq.magnitude.bodymotion.gyroscope
mean.freq.magnitude.bodymotion.jerk.gyroscope
std.dev.freq.magnitude.bodymotion.jerk.gyroscope

Variable Labels
This section provides description for each variable in the tidy dataset. 

subject.identifier : An identifier of the subject who carried out the experiment.
activity : Activity from one the six activities WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
mean.X.time.bodymotion.accelerometer : Mean Time for the Body Motion Component of Acceleration Signal from Accelerometer X axis
mean.Y.time.bodymotion.accelerometer : Mean Time for the Body Motion Component of Acceleration Signal from Accelerometer Y axis
mean.Z.time.bodymotion.accelerometer : Mean Time for the Body Motion Component of Acceleration Signal from Accelerometer Z axis
std.dev.X.time.bodymotion.accelerometer : Standard Deviation Time for the Body Motion Component of Acceleration Signal from Accelerometer X axis
std.dev.Y.time.bodymotion.accelerometer : Standard Deviation Time for the Body Motion Component of Acceleration Signal from Accelerometer Y axis
std.dev.Z.time.bodymotion.accelerometer : Standard Deviation Time for the Body Motion Component of Acceleration Signal from Accelerometer Z axis
mean.X.time.gravitational.accelerometer : Mean Time for the Gravitational Component of Acceleration from Accelerometer X axis
mean.Y.time.gravitational.accelerometer : Mean Time for the Gravitational Component of Acceleration from Accelerometer Y axis
mean.Z.time.gravitational.accelerometer : Mean Time for the Gravitational Component of Acceleration from Accelerometer Z axis
std.dev.X.time.gravitational.accelerometer : Standard Deviation Time for the Gravitational Component of Acceleration from Accelerometer X axis
std.dev.Y.time.gravitational.accelerometer : Standard Deviation Time for the Gravitational Component of Acceleration from Accelerometer Y axis
std.dev.Z.time.gravitational.accelerometer : Standard Deviation Time for the Gravitational Component of Acceleration from Accelerometer Z axis
mean.X.time.bodymotion.jerk.accelerometer : Mean Time for the Body Motion Jerk Signal of Acceleration Signal from Accelerometer X axis
mean.Y.time.bodymotion.jerk.accelerometer : Mean Time for the Body Motion Jerk Signal of Acceleration Signal from Accelerometer Y axis
mean.Z.time.bodymotion.jerk.accelerometer : Mean Time for the Body Motion Jerk Signal of Acceleration Signal from Accelerometer Z axis
std.dev.X.time.bodymotion.jerk.accelerometer : Standard Deviation Time for the Body Motion Jerk Signal of Acceleration Signal from Accelerometer X axis
std.dev.Y.time.bodymotion.jerk.accelerometer : Standard Deviation Time for the Body Motion Jerk Signal of Acceleration Signal from Accelerometer Y axis
std.dev.Z.time.bodymotion.jerk.accelerometer : Standard Deviation Time for the Body Motion Jerk Signal of Acceleration Signal from Accelerometer Z axis
mean.X.time.bodymotion.accelerometer : Mean Time for the Body Motion Component of Acceleration Signal from Gyroscope X axis
mean.Y.time.bodymotion.accelerometer : Mean Time for the Body Motion Component of Acceleration Signal from Gyroscope Y axis
mean.Z.time.bodymotion.accelerometer : Mean Time for the Body Motion Component of Acceleration Signal from Gyroscope Z axis
std.dev.X.time.bodymotion.accelerometer : Standard Deviation Time for the Body Motion Component of Acceleration Signal from Gyroscope X axis
std.dev.Y.time.bodymotion.accelerometer : Standard Deviation Time for the Body Motion Component of Acceleration Signal from Gyroscope Y axis
std.dev.Z.time.bodymotion.accelerometer : Standard Deviation Time for the Body Motion Component of Acceleration Signal from Gyroscope Z axis
mean.X.time.bodymotion.jerk.accelerometer : Mean Time for the Body Motion Jerk Signal of Acceleration Signal from Gyroscope X axis
mean.Y.time.bodymotion.jerk.accelerometer : Mean Time for the Body Motion Jerk Signal of Acceleration Signal from Gyroscope Y axis
mean.Z.time.bodymotion.jerk.accelerometer : Mean Time for the Body Motion Jerk Signal of Acceleration Signal from Gyroscope Z axis
std.dev.X.time.bodymotion.jerk.accelerometer : Standard Deviation Time for the Body Motion Jerk Signal of Acceleration Signal from Gyroscope X axis
std.dev.Y.time.bodymotion.jerk.accelerometer : Standard Deviation Time for the Body Motion Jerk Signal of Acceleration Signal from Gyroscope Y axis
std.dev.Z.time.bodymotion.jerk.accelerometer : Standard Deviation Time for the Body Motion Jerk Signal of Acceleration Signal from Gyroscope Z axis
mean.time.magnitude.bodymotion.accelerometer : Mean Time for the Magnitude of Body Motion Signal from Accelerometer
std.dev.time.magnitude.bodymotion.accelerometer : Standard Deviation Time for the Magnitude of Body Motion Signal from Accelerometer
mean.time.magnitude.gravitational.accelerometer : Mean Time for the Magnitude of Gravitational Component from Accelerometer
std.dev.time.magnitude.gravitational.accelerometer : Standard Deviation Time for the Magnitude of Gravitational Component from Accelerometer
mean.time.magnitude.bodymotion.jerk.accelerometer : Mean Time for the Magnitude of Body Motion Jerk Signal from Accelerometer
std.dev.time.magnitude.bodymotion.jerk.accelerometer : Standard Deviation Time for the Magnitude of Body Motion Jerk Signal from Accelerometer
mean.time.magnitude.gravitational.gyroscope : Mean Time for the Magnitude of Gravitational Component from Gyroscope
std.dev.time.magnitude.gravitational.gyroscope : Standard Deviation Time for the Magnitude of Gravitational Component from Gyroscope
mean.time.magnitude.bodymotion.jerk.gyroscope : Mean Time for the Magnitude of Body Motion Jerk Signal from Gyroscope
std.dev.time.magnitude.bodymotion.jerk.gyroscope : Standard Deviation Time for the Magnitude of Body Motion Jerk Signal from Gyroscope
mean.X.freq.bodymotion.accelerometer : Mean Frequency for the Body Motion Component of Acceleration Signal from Accelerometer X axis
mean.Y.freq.bodymotion.accelerometer : Mean Frequency for the Body Motion Component of Acceleration Signal from Accelerometer Y axis
mean.Z.freq.bodymotion.accelerometer : Mean Frequency for the Body Motion Component of Acceleration Signal from Accelerometer Z axis
std.dev.X.freq.bodymotion.accelerometer : Standard Deviation Frequency for the Body Motion Component of Acceleration Signal from Accelerometer X axis
std.dev.Y.freq.bodymotion.accelerometer : Standard Deviation Frequency for the Body Motion Component of Acceleration Signal from Accelerometer Y axis
std.dev.Z.freq.bodymotion.accelerometer : Standard Deviation Frequency for the Body Motion Component of Acceleration Signal from Accelerometer Z axis
mean.X.freq.bodymotion.jerk.accelerometer : Mean Frequency for the Body Motion Jerk Signal of Acceleration Signal from Accelerometer X axis
mean.Y.freq.bodymotion.jerk.accelerometer : Mean Frequency for the Body Motion Jerk Signal of Acceleration Signal from Accelerometer Y axis
mean.Z.freq.bodymotion.jerk.accelerometer : Mean Frequency for the Body Motion Jerk Signal of Acceleration Signal from Accelerometer Z axis
std.dev.X.freq.bodymotion.jerk.accelerometer : Standard Deviation Frequency for the Body Motion Jerk Signal of Acceleration Signal from Accelerometer X axis
std.dev.Y.freq.bodymotion.jerk.accelerometer : Standard Deviation Frequency for the Body Motion Jerk Signal of Acceleration Signal from Accelerometer Y axis
std.dev.Z.freq.bodymotion.jerk.accelerometer : Standard Deviation Frequency for the Body Motion Jerk Signal of Acceleration Signal from Accelerometer Z axis
mean.X.freq.bodymotion.jerk.gyroscope : Mean Frequency for the Body Motion Jerk Signal of Acceleration Signal from Gyroscope X axis
mean.Y.freq.bodymotion.jerk.gyroscope : Mean Frequency for the Body Motion Jerk Signal of Acceleration Signal from Gyroscope Y axis
mean.Z.freq.bodymotion.jerk.gyroscope : Mean Frequency for the Body Motion Jerk Signal of Acceleration Signal from Gyroscope Z axis
std.dev.X.freq.bodymotion.jerk.gyroscope : Standard Deviation Frequency for the Body Motion Jerk Signal of Acceleration Signal from Gyroscope X axis
std.dev.Y.freq.bodymotion.jerk.gyroscope : Standard Deviation Frequency for the Body Motion Jerk Signal of Acceleration Signal from Gyroscope Y axis
std.dev.Z.freq.bodymotion.jerk.gyroscope : Standard Deviation Frequency for the Body Motion Jerk Signal of Acceleration Signal from Gyroscope Z axis
mean.freq.magnitude.bodymotion.accelerometer : Mean Frequency for the Magnitude of Body Motion Signal from Accelerometer
std.dev.freq.magnitude.bodymotion.accelerometer : Standard Deviation Frequency for the Magnitude of Body Motion Signal from Accelerometer
mean.freq.magnitude.bodymotion.jerk.accelerometer : Mean Frequency for the Magnitude of Body Motion Jerk Signal from Accelerometer
std.dev.freq.magnitude.bodymotion.jerk.accelerometer : Standard Deviation Frequency for the Magnitude of Body Motion Jerk Signal from Accelerometer
mean.freq.magnitude.bodymotion.gyroscope : Mean Frequency for the Magnitude of Body Motion Signal from Gyroscope
std.dev.freq.magnitude.bodymotion.gyroscope : Standard Deviation Frequency for the Magnitude of Body Motion Signal from Gyroscope
mean.freq.magnitude.bodymotion.jerk.gyroscope : Mean Frequency for the Magnitude of Body Motion Jerk Signal from Gyroscope
std.dev.freq.magnitude.bodymotion.jerk.gyroscope : Standard Deviation Frequency for the Magnitude of Body Motion Jerk Signal from Gyroscope

Variables Formats
All variables in the tidy dataset except 'Activity' and 'Subject' use numeric data type to specify the measurements.
'Activity' signifies each activity a person was performing when measurements were taken. Activity vector is a Factor with 6 levels.
'Subjec't uses an integer datatype. It is an identifier used to identify each person participating in the experiment.

Summary Choices 
The project requirement #2 is specified as: 
"# 2. Extracts only the measurements on the mean and standard deviation for each measurement. "
This provides a definite guideline when choosing the variables that are to be included in the tidy dataset.Specifically, variables are selected from a list of features where a feature name contains 'mean()' or 'std()'. After filtering the available 561 features based on this criteria, it results in a total of 66 features. The results also exclude any columns that have 'meanFreq' in the feature name in order to be consistent and to have a symmetrical division of 'Mean' and 'Standard Deviation' columns. There are no corresponding 'stdFreq' columns in the dataset for 'Standard Deviation', their absence may leave the reader/user confused searching for missing columns.

Study Design 
This section contains thorough description of how data was acquired.
The original dataset, Human Activity Recognition Using Smartphones Dataset Version 1.0, was compiled by a group of students working in "Smartlab - Non Linear Complex Systems Laboratory".

At the time of writing this codebook, the original dataset for this project is available at :
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

This project simply cleans the original dataset, rearranges data, renames features and provides a tidy dataset, no other experimental steps are involved.

Information on Data Collection
The project itself came with an original dataset as noted above. 

The original dataset had 24 files listed below.
/UCI HAR Dataset/activity_labels.txt                         
/UCI HAR Dataset/features_info.txt                           
/UCI HAR Dataset/features.txt                                
/UCI HAR Dataset/README.txt                                  
/UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt   
/UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt   
/UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt   
/UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt  
/UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt  
/UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt  
/UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt  
/UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt  
/UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt  
/UCI HAR Dataset/test/subject_test.txt                       
/UCI HAR Dataset/test/X_test.txt                             
/UCI HAR Dataset/test/y_test.txt                             
/UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt 
/UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt 
/UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt 
/UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt
/UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt
/UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt
/UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt
/UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt
/UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt
/UCI HAR Dataset/train/subject_train.txt                     
/UCI HAR Dataset/train/X_train.txt                           
/UCI HAR Dataset/train/y_train.txt

/UCI HAR Dataset/README.txt  
 - ReadMe file that explains various files in the original dataset, provides clarification on the experimental steps taken, information about contents of the provided files and other relevant information for processing and analysis of the data provided in the dataset.

Inertial Signals
'Inertial Signals' folder in 'train' and 'test' folders contain a total of following 18 files. 
/UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt 
/UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt 
/UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt 
/UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt
/UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt
/UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt
/UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt
/UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt
/UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt
/UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt   
/UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt   
/UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt   
/UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt  
/UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt  
/UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt  
/UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt  
/UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt  
/UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt
 
For the purpose of this tidy data project, these files DO NOT provide any data that contributes to the final tidy dataset output of this project.
Even if these files were to be processed alongwith the train and test X data, a subsequent step in the data cleaning process for this project requires getting rid of all the variables that are not to do with mean or standard deviation. Further close analysis of these files using the column names from the features.txt reveals that no names for those columns belong to any of these files. 

Data Processing
Each of the 8 files outlined below is analyzed, processed and utilized to build the final dataset.

Out of all the files from the original dataset above, this project uses the following 8 files for analysis and building of the final tidy dataset.
/UCI HAR Dataset/features.txt
/UCI HAR Dataset/train/subject_train.txt
/UCI HAR Dataset/test/subject_test.txt
/UCI HAR Dataset/train/X_train.txt
/UCI HAR Dataset/test/X_test.txt
/UCI HAR Dataset/train/y_train.txt
/UCI HAR Dataset/test/y_test.txt
/UCI HAR Dataset/activity_labels.txt

Data Information

/UCI HAR Dataset/features.txt
- This file is read to acquire all the features represented by the data in the original dataset. There are 561 features in features.txt to begin with. Further analysis of 'X_train.txt' and 'X_test.txt' in the original dataset reveals that each row in 'test' and 'training' data contains 561 features. These features directly map to these measurements.

/UCI HAR Dataset/train/X_train.txt
/UCI HAR Dataset/test/X_test.txt
- These two files contain the measurements for train and test data in the original dataset. These files are read and data is combined to acquire all the observations for training and test data. The analysis of these files reveals 2947 test observations and 7352 training observations. The combined dataset comprises of 10299 measurement observations in 561 variables each.

/UCI HAR Dataset/train/subject_train.txt
/UCI HAR Dataset/test/subject_test.txt
- These two files provide the subjects who performed the activity for each window sample. Its range is from 1 to 30. Subjects are a group of 30 volunteers within an age bracket of 19-48 years as per the ReadMe file that came with the data. The analysis of these files reveals 2947 test observations and 7352 training observations. The combined dataset comprises of 10299 subject observations. 

/UCI HAR Dataset/train/y_train.txt 
/UCI HAR Dataset/test/y_test.txt 
- These two files contain the activity data. The values correspond to one of the six activities identified by '/UCI HAR Dataset/activity_labels.txt'. 

/UCI HAR Dataset/activity_labels.txt 
- This file contains the class labels for the activity names. 'Activity' signifies each activity a person was performing when measurements were taken. Each individual participating in the experiment performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

Units
The measurements in original data files represent time and frequency domain variables. However, features are normalized and bound within [-1,1] as per the ReadMe.txt file. Hence, this tidy dataset does not apply the usual units for time (seconds, minutes etc.) and frequency (Hz). 

Instruction List
run_analysis.R
No inputs, no parameters to the script 
Output : Tidy Data
The final tidy dataset contains 180 observation rows with a total of 68 columns.

Guidelines for this codebook have been obtained from  Interuniversity Consortium for Political and Social Research (ICPSR). 
For more information please visit : http://www.icpsr.umich.edu/icpsrweb/ICPSR/support/faqs/2006/01/what-is-codebook
