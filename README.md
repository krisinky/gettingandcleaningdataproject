# Getting and Cleaning Data Course Project


##Problem Summary 
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
You should create one R script called run_analysis.R that does the following. 
1.	Merges the training and the test sets to create one data set.
2.	Extracts only the measurements on the mean and standard deviation for each measurement. 
3.	Uses descriptive activity names to name the activities in the data set
4.	Appropriately labels the data set with descriptive variable names. 
5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Repository Contents

The [krisinky/gettingandcleaningdataproject](https://github.com/krisinky/gettingandcleaningdataproject) repository includes four files:  this README.md file, CodeBook.md, run_analysis.R, and tidy_data.txt.
This README.md document explains the project and how to use files contained in the repository.
The CodeBook.md describes the variables, the data, and any transformations or work that you performed to clean up the data.
The tidy_data.txt data set is documented in the CodeBook.md.
##Description of the script, run_analysis.R
The script, run_analysis.R, contains a function run_analysis()that
1.	Merges the training and the test sets to create one data set.
2.	Extracts only the measurements on the mean and standard deviation for each measurement. 
3.	Uses descriptive activity names to name the activities in the data set
4.	Appropriately labels the data set with descriptive variable names. 
5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
The run_analysis()function contains library statements for the following required packages:  reshape2, plyr, and dplyr.  

1.	 The function downloads and reads the data sets by 
a.	Determining the download method (curl or wininet) required by the operating system.
b.	Downloading the ZIP file from the url provided.
c.	Extracting the files from the ZIP file using unzip().
d.	Reading the features.txt, activity_labels.txt, subject_train.txt, subject_test.txt, y_train.txt, and y_test.txt files using read.csv().
e.	Reading the x_train.txt and x_test.txt files using read.fwf(), with column widths=16 and column names from features.txt.
f.	Assign column names to subject_train.txt, subject_test.txt, y_train.txt, and y_test.txt files.
g.	For x_train and x_test separately, use cbind() to combine the subject and y_ data with the x_ data.  Use merge() to append the activity_labels (this is actually step 3, but I did it here).
h.	Finally, use rbind() to combine the test and train data sets.
2.	Uses select() to select the subject, activity, and variables that contain "mean", contain("std"), do not contain “angle", and do not contain "meanFreq”.
3.	See 1.g
4.	Uses a series of gsub() and sub() statements to 
a.	eliminates . chars
b.	fully spells "accelerator
c.	adds "axis" before axis labels
d.	replaces variable domains t=time and f=freq
e.	changes all char to lower case
f.	replaces double label “bodybody” with “body”
g.	replaces "bodygyro" with "angularvelocity"
5.	Uses melt(), then ddply() to calculate means for all variables fir each subject and activity combination.  Uses dcast() to create a data set with one row for each subject-activity combination.  Uses write.cvs to create the tidy_data.txt file.




