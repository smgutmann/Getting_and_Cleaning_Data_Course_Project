# Getting and Cleaning Data Course Project

Created in April 2020 by Sascha Gutmann

## Project description

This repo contains files that resulted from work done during the Getting and Cleaning Data Course provided by Johns Hopkins University on Coursera. The program assigment included the following tasks (Peer-graded Assignment: Getting and Cleaning Data Course Project on Coursera):

> "You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected."

## List of files

**HAR_mean-std_tidy_dataset.txt**: Tidy data set that was obtained as a result of executing run_analysis.R

**README.md**: This file  

**codebook.md**: Code book that describes variables, data, and transformations carried out in order to obtain HAR_mean-std_tidy_dataset.txt   

**fetchWearableData.R**: R script to obtain original data files that were used as input for run_analysis.R  

**run_analysis.R**: R script to perform transformations with original data (output of running fetchWearableData.R) as input: Running this script produces HAR_mean-std_tidy_dataset.txt as output  

## Original data

Original data used for this project were downloaded from this source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip on April 18, 2020. 

Original data are not included in this repo.
