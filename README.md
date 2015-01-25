## Creating a Tidy Dataset Repository

This repository contains following files:
### 1) run_analysis.R
A script used to gather and tidy the data obtained in raw form i.e. text files [UCI HAR Dataset]. 
Requires no arguments. 
Run the script in working directory where UCI HAR Dataset directory is placed.
Output is tidy dataset (e.g. tidy_dataset_UCI_HAR).
Usage example:
> source("run_analysis.R")
> tidy_dataset_UCI_HAR <- run_analysis()
> View(tidy_dataset_UCI_HAR)

Each original dataset file was read and corresponding dataset was obtained.
To gain the total dataset, first subject_train, x_train and y_train dataset were merged into one dataset. The same was done for test datasets.
This createad train dataset and test dataset, which where then merged into total dataset.
From total dataset only measurements on mean and standard deviation were extracted - in total 66 variables.
Along with the subject identifier and activity identifier, total dataset contained 68 variables.
Activity identifier was then replaced with the activity label and named properly. 
Also, each variable from features was given a corresponding name in human readable form.
To obtain a tidy data set, average of each variable for each activity and each subject was calculated.
This created final data set with 180 observations and 68 variables.

When loading the dataset uploaded to Coursera, please use the following statement:
tidy_dataset <- read.table("tidy_dataset_UCI_HAR.txt", header=TRUE)

### 2) CodeBook.md
Codebook for this case study, containing descriptions of the raw data, tranformations that were done to it to obtain the tidy dataset and data dictionary i.e. list of all the variables and their description.