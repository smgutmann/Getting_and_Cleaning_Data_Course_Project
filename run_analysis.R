# run_analysis.R
# 
# JHU Data Science Course on Coursera - Getting and Cleaning Data Course Project
#
# Task: You should create one R script called run_analysis.R that does the following.
#
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average 
#    of each variable for each activity and each subject.
#
# Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#
# "UCI HAR Dataset.zip" was downloaded and extracted using the fetchWearableData.R script
#

library(dplyr)
library(reshape2)

setwd("/home/sascha/R/Data-science_coursera/03_Getting_and_Cleaning_Data/Getting_and_Cleaning_Data_Course_Project")

# 1. Merging the training and test sets to create one data set
# x: features, y: activity labels

featureTest <- read.table("UCI HAR Dataset/test/X_test.txt")
activityTest <- read.table("UCI HAR Dataset/test/y_test.txt")
subjTest <- read.table("UCI HAR Dataset/test/subject_test.txt")
featureTrain <- read.table("UCI HAR Dataset/train/X_train.txt")
activityTrain <- read.table("UCI HAR Dataset/train/y_train.txt")
subjTrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
featureNames <- read.table("./UCI HAR Dataset/features.txt")

featureCombined <- rbind(featureTest, featureTrain)
activityCombined <- rbind(activityTest, activityTrain)
subjCombined <- rbind(subjTest, subjTrain)

# Assign column names

names(subjCombined) <- c("subject")
names(activityCombined) <- c("activity")
names(featureCombined) <- featureNames[, 2]

# Combine all subsets to one data frame

subjActivity <- cbind(subjCombined, activityCombined)
df <- cbind(subjActivity, featureCombined)

# 2. Extraction of measurements on the mean and standard deviation for each measurement.

subsetSelector <- grepl("mean\\(\\)|std\\(\\)", names(df))
dfSubset <- df[, subsetSelector]
dfSubset <- cbind(subjActivity, dfSubset)

# 3. Use descriptive activity names to name the activities in the data set

dfSubset$activity <- as.character(dfSubset$activity) # Convert integer to character in activity column
dfSubset %>% mutate(activity = recode(activity,`1` = "WALKING", 
                                      `2` = "WALKING_UPSTAIRS",
                                      `3` = "WALKING_DOWNSTAIRS",
                                      `4` = "SITTING",
                                      `5` = "STANDING",
                                      `6` = "LAYING",)) -> dfSubset


# 4. Appropriately labels the data set with descriptive variable names

names(dfSubset) <- gsub("BodyBody","Body", names(dfSubset))
names(dfSubset) <- gsub("Freq","Frequency", names(dfSubset))
names(dfSubset) <- gsub("Gyro","Gyroscope", names(dfSubset))
names(dfSubset) <- gsub("Acc","Accelerometer", names(dfSubset))
names(dfSubset) <- gsub("Mag","Magnitude", names(dfSubset))
names(dfSubset) <- gsub("\\(\\)\\-", "", names(dfSubset))
names(dfSubset) <- gsub("\\(\\)", "", names(dfSubset))

# 5. A second, independent tidy data set is created from dfSubset with the average 
# of each variable for each activity and each subject. 
# Using melt and dcast fuctions from reshape2 package

dfMelt <- melt(dfSubset, id = c("subject", "activity"))
dfTidy <- dcast(dfMelt, subject + activity ~ variable, mean)

# Writing out tidy dataset to text file

write.table(dfTidy, file = "HAR_mean-std_tidy_dataset.txt", row.names = FALSE)



