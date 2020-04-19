---
title: "Codebook"
author: "Sascha Gutmann"
date: "4/18/2020"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Code book

This code book contains information about data and variables present in the HAR_mean-std_dataset.txt file. Please refer to the Readme.Rmd file for information about how the dataset was created. 

## Data

HAR_mean-std_dataset.txt is a table containing 180 tab-separated observations of 68 variables. It was created from the "Human activity recognition using smartphones" data set obtained from the [UCI  Machine Learning Repository] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) with fetchWearableData.R and run_analysis.R.

## Variables

### List of variables used in the dataset

| "subject"
| "activity"
| "tBodyAccelerometer-meanX"
| "tBodyAccelerometer-meanY"
| "tBodyAccelerometer-meanZ"
| "tBodyAccelerometer-stdX"
| "tBodyAccelerometer-stdY"
| "tBodyAccelerometer-stdZ"
| "tGravityAccelerometer-meanX"
| "tGravityAccelerometer-meanY"
| "tGravityAccelerometer-meanZ"
| "tGravityAccelerometer-stdX"
| "tGravityAccelerometer-stdY"
| "tGravityAccelerometer-stdZ"
| "tBodyAccelerometerJerk-meanX"
| "tBodyAccelerometerJerk-meanY"
| "tBodyAccelerometerJerk-meanZ"
| "tBodyAccelerometerJerk-stdX"
| "tBodyAccelerometerJerk-stdY"
| "tBodyAccelerometerJerk-stdZ"
| "tBodyGyroscope-meanX"
| "tBodyGyroscope-meanY"
| "tBodyGyroscope-meanZ"
| "tBodyGyroscope-stdX"
| "tBodyGyroscope-stdY"
| "tBodyGyroscope-stdZ"
| "tBodyGyroscopeJerk-meanX"
| "tBodyGyroscopeJerk-meanY"
| "tBodyGyroscopeJerk-meanZ"
| "tBodyGyroscopeJerk-stdX"
| "tBodyGyroscopeJerk-stdY"
| "tBodyGyroscopeJerk-stdZ"
| "tBodyAccelerometerMagnitude-mean"
| "tBodyAccelerometerMagnitude-std"
| "tGravityAccelerometerMagnitude-mean"
| "tGravityAccelerometerMagnitude-std"
| "tBodyAccelerometerJerkMagnitude-mean"
| "tBodyAccelerometerJerkMagnitude-std"
| "tBodyGyroscopeMagnitude-mean"
| "tBodyGyroscopeMagnitude-std"
| "tBodyGyroscopeJerkMagnitude-mean"
| "tBodyGyroscopeJerkMagnitude-std"
| "fBodyAccelerometer-meanX"
| "fBodyAccelerometer-meanY"
| "fBodyAccelerometer-meanZ"
| "fBodyAccelerometer-stdX"
| "fBodyAccelerometer-stdY"
| "fBodyAccelerometer-stdZ"
| "fBodyAccelerometerJerk-meanX"
| "fBodyAccelerometerJerk-meanY"
| "fBodyAccelerometerJerk-meanZ"
| "fBodyAccelerometerJerk-stdX"
| "fBodyAccelerometerJerk-stdY"
| "fBodyAccelerometerJerk-stdZ"
| "fBodyGyroscope-meanX"
| "fBodyGyroscope-meanY"
| "fBodyGyroscope-meanZ"
| "fBodyGyroscope-stdX"
| "fBodyGyroscope-stdY"
| "fBodyGyroscope-stdZ"
| "fBodyAccelerometerMagnitude-mean"
| "fBodyAccelerometerMagnitude-std"
| "fBodyAccelerometerJerkMagnitude-mean"
| "fBodyAccelerometerJerkMagnitude-std"
| "fBodyGyroscopeMagnitude-mean"
| "fBodyGyroscopeMagnitude-std"
| "fBodyGyroscopeJerkMagnitude-mean"
| "fBodyGyroscopeJerkMagnitude-std"

### Features

| Accelerometer : Accelerometer 3-axial (XYZ) raw signals
| Gyroscope :     Gryoscope 3-axial (XYZ) raw signals
| Accelerometer and Gyroscope signals separated into body (Body) and gravity (Gravity) signals
| activity :      Activity label (number) was replaced by activty description
|        WALKING (1), 
|        WALKING_UPSTAIRS (2), 
|        WALKING_DOWNSTAIRS (3), 
|        SITTING, STANDING (5), 
|        LAYING (6)
| subject: Identification number for each subject participating in the study

### Set of variables derived from features: 

| f : frequency domain   
| t : time domain        
| mean : mean value         
| std : standard deviation 

