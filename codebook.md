## Codebook

This code book contains information about data and variables present in the HAR_mean-std_dataset.txt file. Please refer to the Readme.Rmd file for information about how the dataset was created. 

## Data

HAR_mean-std_dataset.txt is a table containing 180 tab-separated observations of 68 variables. It was created from the "Human activity recognition using smartphones" data set downloaded from the [UCI  Machine Learning Repository] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) with **fetchWearableData.R** and **run_analysis.R**.

## Variables

### List of variables used in HAR_mean-std_tidy_dataset.txt

"subject"  
"activity"  
"tBodyAccelerometer-meanX"  
"tBodyAccelerometer-meanY"  
"tBodyAccelerometer-meanZ"  
"tBodyAccelerometer-stdX"  
"tBodyAccelerometer-stdY"  
"tBodyAccelerometer-stdZ"  
"tGravityAccelerometer-meanX"  
"tGravityAccelerometer-meanY"  
"tGravityAccelerometer-meanZ"  
"tGravityAccelerometer-stdX"  
"tGravityAccelerometer-stdY"  
"tGravityAccelerometer-stdZ"  
"tBodyAccelerometerJerk-meanX"  
"tBodyAccelerometerJerk-meanY"  
"tBodyAccelerometerJerk-meanZ"  
"tBodyAccelerometerJerk-stdX"  
"tBodyAccelerometerJerk-stdY"  
"tBodyAccelerometerJerk-stdZ"  
"tBodyGyroscope-meanX"  
"tBodyGyroscope-meanY"  
"tBodyGyroscope-meanZ"  
"tBodyGyroscope-stdX"  
"tBodyGyroscope-stdY"  
"tBodyGyroscope-stdZ"  
"tBodyGyroscopeJerk-meanX"  
"tBodyGyroscopeJerk-meanY"  
"tBodyGyroscopeJerk-meanZ"  
"tBodyGyroscopeJerk-stdX"  
"tBodyGyroscopeJerk-stdY"  
"tBodyGyroscopeJerk-stdZ"  
"tBodyAccelerometerMagnitude-mean"  
"tBodyAccelerometerMagnitude-std"  
"tGravityAccelerometerMagnitude-mean"  
"tGravityAccelerometerMagnitude-std"  
"tBodyAccelerometerJerkMagnitude-mean"  
"tBodyAccelerometerJerkMagnitude-std"  
"tBodyGyroscopeMagnitude-mean"  
"tBodyGyroscopeMagnitude-std"  
"tBodyGyroscopeJerkMagnitude-mean"  
"tBodyGyroscopeJerkMagnitude-std"  
"fBodyAccelerometer-meanX"  
"fBodyAccelerometer-meanY"  
"fBodyAccelerometer-meanZ"  
"fBodyAccelerometer-stdX"  
"fBodyAccelerometer-stdY"  
"fBodyAccelerometer-stdZ"  
"fBodyAccelerometerJerk-meanX"  
"fBodyAccelerometerJerk-meanY"  
"fBodyAccelerometerJerk-meanZ"  
"fBodyAccelerometerJerk-stdX"  
"fBodyAccelerometerJerk-stdY"  
"fBodyAccelerometerJerk-stdZ"  
"fBodyGyroscope-meanX"  
"fBodyGyroscope-meanY"  
"fBodyGyroscope-meanZ"  
"fBodyGyroscope-stdX"  
"fBodyGyroscope-stdY"  
"fBodyGyroscope-stdZ"  
"fBodyAccelerometerMagnitude-mean"  
"fBodyAccelerometerMagnitude-std"  
"fBodyAccelerometerJerkMagnitude-mean"  
"fBodyAccelerometerJerkMagnitude-std"  
"fBodyGyroscopeMagnitude-mean"  
"fBodyGyroscopeMagnitude-std"  
"fBodyGyroscopeJerkMagnitude-mean"  
"fBodyGyroscopeJerkMagnitude-std"  

### Features

**Accelerometer**: Accelerometer 3-axial (XYZ) signals  

**Gyroscope**: Gryoscope 3-axial (XYZ) signals  

Accelerometer and Gyroscope signals separated into body (Body) and gravity (Gravity) signals  

**activity**: Activity label (number) was replaced by activty description  

    1 WALKING,  
    2 WALKING_UPSTAIRS    
    3 WALKING_DOWNSTAIRS  
    4 SITTING   
    5 STANDING   
    6 LAYING  

**subject**: Identification number for each subject participating in the study  

### Set of variables derived from features

f : frequency domain   
t : time domain        
mean : mean value         
std : standard deviation 

### Transformation of original data

#### 1. fetchWearableData.R

The fetchWearable data first checks if an 'UCI HAR Dataset' directory is already present. If not then it downloads a zipped file containing the data from "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip". The zip file is stored in the working directory from which this script is run and is extracted into a separate folder "./UCI HAR Dataset" (unzip)

#### 2. run_analysis.R

a. dplyr and reshape2 libraries are loaded because functions from these libraries will be used.  
b. Training and test sets are merged to create one data set (x: features, y: activity labels).  
c. Column names are assigned according to the feature names described in the features.txt file present in the original, downloaded data directory.  
d. Training, test, activity and subject data are combined into one data set.  
e. From this combined data set, measurements on the mean and standard deviations were extracted for each measurement.  
f. Descriptive activity names are used instead of a number for each recorded activity in the extracted data.  
g. Original data labeling is substituted by descriptive variable names.  
h. A second, independent tidy data set is created from the extracted data set with the average (mean) of each variable for each activity and each subject. To achieve this, data is transformed into suject-activity combination (melt function) and then cast into a frame (dcast fuction) that contains the average of each variable for each acitity and subject.    
j. The cast data set is written out as a text file.  

#### 3. Files used as input

The following files from the original data ("./UCI HAR Dataset" folder) were used as input for the transformations described above:  

"UCI HAR Dataset/test/X_test.txt"  
"UCI HAR Dataset/test/y_test.txt"  
"UCI HAR Dataset/test/subject_test.txt"  
"UCI HAR Dataset/train/X_train.txt"  
"UCI HAR Dataset/train/y_train.txt"  
"UCI HAR Dataset/train/subject_train.txt"  
"UCI HAR Dataset/features.txt"  

