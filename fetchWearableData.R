# Download required data for teh Getting and Cleaning Data Course Project on Coursera
# Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#
#

# Check if data directory exists

if(!file.exists("./UCI HAR Dataset")) {
        
        fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(fileurl, destfile = "UCI_HARdata.zip", method = "curl")
        unzip("UCI_HARdata.zip") 
        
} else {print("A directory named 'UCI HAR Dataset' is already exists")}
