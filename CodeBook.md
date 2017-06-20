---
title: "CodeBook.md"
author: "Kristina	 Speelman"
date: "6/18/2017"
---

##Project Description

###Getting and Cleaning Data Course Project

* Read multiple data files.
* Combine files into one data set
* Use the descriptive activity names to name the activities in the dataset.
* Clean up variable names to make them more readable
* Create a second data set from the cleaned-up combined data set with the average of each variable for each activity and subject.

##Study design and data processing

###Collection of the raw data

The data was provided in a downloaded zip file.  The contents were downloaded then extracted to a working directory.


###Notes on the original (raw) data 

The original study collected data from accelerometers from the Samsung Galaxy S smartphone.
The experiments were carried out with a group of 30. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing the smartphone on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. The experiments were video-recorded to label the data manually. The obtained dataset were randomly partitioned into two sets, where 70% of the volunteers were selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

##Creating the tidy datafile

###Guide to create the tidy data file
1. Download, extract, and read the files.
2. Set column names for each downloaded data set.
3. Combine the files via cbind, merge, and rbind.
4. Extract mean and standard deviation (std) for each measurement.
5. Clean up the variable names
6. Create a summarized data set containing the average of each variable for each activity and subject.


###Cleaning of the data

The run_analysis_R script cleans the data by 
assigning descriptive column names to the fields in the resulting dataset: 
* eliminating periods (.), 
* changing the case to lowercase, 
* spelling out the domain of each variable, 
* renaming signal component of the variable name to consistently name the signal instead of the measuring tool (“gyro”), and
* clearly identifying the axis of each axial variable.

##Description of the variables in the tiny_data.txt file

 - Summary of the data
 
The data is comprised of the means (average) of each mean and standard deviation(std) signal variable for each activity and subject.

- The dimensions of the dataset are:

subject

activity

 - Mean and Standard Deviation (std) signal variables have a naming structure of:
* [domain][signal][metric][jerk, if applicable][mag, if applicable][axis, if applicable] or
* [time or freq][body acceleration or gravity or angular velocity][mean or std]…
- The variables present in the dataset are:

timebodyaccelerationmeanaxisx 

timebodyaccelerationmeanaxisy

timebodyaccelerationmeanaxisz

timegravityaccelerationmeanaxisx   

timegravityaccelerationmeanaxisy

timegravityaccelerationmeanaxisz

timebodyaccelerationjerkmeanaxisx  

timebodyaccelerationjerkmeanaxisy

timebodyaccelerationjerkmeanaxisz

timeangularvelocitymeanaxisx              

timeangularvelocitymeanaxisy

timeangularvelocitymeanaxisz

timeangularvelocityjerkmeanaxisx          

timeangularvelocityjerkmeanaxisy

timeangularvelocityjerkmeanaxisz

timebodyaccelerationmagmean        

timegravityaccelerationmagmean

timebodyaccelerationjerkmagmean

timeangularvelocitymagmean                

timeangularvelocityjerkmagmean

freqbodyaccelerationmeanaxisx

freqbodyaccelerationmeanaxisy      

freqbodyaccelerationmeanaxisz

freqbodyaccelerationjerkmeanaxisx

freqbodyaccelerationjerkmeanaxisy  

freqbodyaccelerationjerkmeanaxisz

freqangularvelocitymeanaxisx

freqangularvelocitymeanaxisy              

freqangularvelocitymeanaxisz

freqbodyaccelerationmagmean

freqbodyaccelerationjerkmagmean

freqangularvelocitymagmean

freqangularvelocityjerkmagmean

timebodyaccelerationstdaxisx       

timebodyaccelerationstdaxisy

timebodyaccelerationstdaxisz

timegravityaccelerationstdaxisx    

timegravityaccelerationstdaxisy

timegravityaccelerationstdaxisz

timebodyaccelerationjerkstdaxisx   

timebodyaccelerationjerkstdaxisy

timebodyaccelerationjerkstdaxisz

timeangularvelocitystdaxisx               

timeangularvelocitystdaxisy

timeangularvelocitystdaxisz

timeangularvelocityjerkstdaxisx           

timeangularvelocityjerkstdaxisy

timeangularvelocityjerkstdaxisz

timebodyaccelerationmagstd         

timegravityaccelerationmagstd

timebodyaccelerationjerkmagstd

timeangularvelocitymagstd                 

timeangularvelocityjerkmagstd

freqbodyaccelerationstdaxisx	

freqbodyaccelerationstdaxisy       

freqbodyaccelerationstdaxisz

freqbodyaccelerationjerkstdaxisx

freqbodyaccelerationjerkstdaxisy   

freqbodyaccelerationjerkstdaxisz

freqangularvelocitystdaxisx

freqangularvelocitystdaxisy               

freqangularvelocitystdaxisz

freqbodyaccelerationmagstd

freqbodyaccelerationjerkmagstd 

freqangularvelocitymagstd

freqangularvelocityjerkmagstd   



Variable Descriptions

- timebodyaccelerationmeanaxisx:

  A numeric field in units of ‘g’s representing the average mean x-axis component of the axial body motion acceleration.


- timebodyaccelerationmeanaxisy:

  A numeric field in units of ‘g’s representing the average mean y-axis component of the axial linear body motion acceleration.  


- timebodyaccelerationmeanaxisz: 

  A numeric field in units of ‘g’s representing the average mean z-axis component of the axial linear body motion acceleration.   


- timegravityaccelerationmeanaxisx:

  A numeric field in units of ‘g’s representing the average mean x-axis component of the axial linear gravitational force acceleration.   


- timegravityaccelerationmeanaxisy

  A numeric field in units of ‘g’s representing the average mean y-axis component of the axial linear gravitational force acceleration. 


- timegravityaccelerationmeanaxisz: 

  A numeric field in units of ‘g’s representing the average mean z-axis component of the axial linear gravitational force acceleration.   


- timebodyaccelerationjerkmeanaxisx:

  A numeric field in units of ‘g’s representing the average mean x-axis component of the axial body acceleration jerk signals.  


- timebodyaccelerationjerkmeanaxisy:

  A numeric field in units of ‘g’s representing the average mean y-axis component of the axial body acceleration jerk signals.


- timebodyaccelerationjerkmeanaxisz:

  A numeric field in units of ‘g’s representing the average mean z-axis component of the axial body acceleration jerk signals.


- timeangularvelocitymeanaxisx:

  A numeric field in units of rad/sec representing the average mean x-axis component of the axial angular velocity.


- timeangularvelocitymeanaxisy:

  A numeric field in units of rad/sec representing the average mean y-axis component of the axial angular velocity.


- timeangularvelocitymeanaxisz:

  A numeric field in units of rad/sec representing the average mean z-axis component of the axial angular velocity.


- timeangularvelocityjerkmeanaxisx:

  A numeric field in units of rad/sec representing the average mean x-axis component of the axial angular velocity jerk signals.


- timeangularvelocityjerkmeanaxisy:

  A numeric field in units of rad/sec representing the average mean y-axis component of the axial angular velocity jerk signals.


- timeangularvelocityjerkmeanaxisz:

  A numeric field in units of rad/sec representing the average mean z-axis component of the axial angular velocity jerk signals.


- timebodyaccelerationmagmean:

  A numeric field in units of ‘g’s representing the average mean magnitude of the body motion acceleration.   


- timegravityaccelerationmagmean:

  A numeric field in units of ‘g’s representing the average mean magnitude of the axial linear gravitational force acceleration.   


- timebodyaccelerationjerkmagmean:

  A numeric field in units of ‘g’s representing the average mean magnitude of the axial body acceleration jerk signals.


- timeangularvelocitymagmean:

  A numeric field in units of rad/sec representing the average mean magnitude of the angular velocity


- timeangularvelocityjerkmagmean:

  A numeric field in units of rad/sec representing the average mean magnitude of the angular velocity jerk signals.


- freqbodyaccelerationmeanaxisx:

  The average of the Fast Fourier Transform (FFT) of the mean x-axis component of the axial body motion acceleration frequency.


- freqbodyaccelerationmeanaxisy:

  The average of the Fast Fourier Transform (FFT) of the mean y-axis component of the axial body motion acceleration frequency.


- freqbodyaccelerationmeanaxisz:

  The average of the Fast Fourier Transform (FFT) of the mean z-axis component of the axial body motion acceleration frequency.


- freqbodyaccelerationjerkmeanaxisx:

  The average of the Fast Fourier Transform (FFT) of the mean x-axis component of the axial body motion acceleration jerk signal frequency.


- freqbodyaccelerationjerkmeanaxisy:

  The average of the Fast Fourier Transform (FFT) of the mean y-axis component of the axial body motion acceleration jerk signal frequency.


- freqbodyaccelerationjerkmeanaxisz:

  The average of the Fast Fourier Transform (FFT) of the mean z-axis component of the axial body motion acceleration jerk signal frequency.


- freqangularvelocitymeanaxisx:

  The average of the Fast Fourier Transform (FFT) of the mean x-axis component of the axial angular velocity frequency.


- freqangularvelocitymeanaxisy:

  The average of the Fast Fourier Transform (FFT) of the mean y-axis component of the axial angular velocity frequency.


- freqangularvelocitymeanaxisz:

  The average of the Fast Fourier Transform (FFT) of the mean z-axis component of the axial angular velocity frequency.


- freqbodyaccelerationmagmean:

  The average of the Fast Fourier Transform (FFT) of the mean magnitude of the body motion acceleration frequency.   


- freqbodyaccelerationjerkmagmean:

  The average of the Fast Fourier Transform (FFT) of the mean magnitude of the of the body motion acceleration jerk signal frequency.  


- freqangularvelocitymagmean:

  The average of the Fast Fourier Transform (FFT) of the mean magnitude of the angular velocity jerk signal frequency.   


- freqangularvelocityjerkmagmean: 

  The average of the Fast Fourier Transform (FFT) of the mean magnitude of the angular velocity jerk signal frequency.   


- timebodyaccelerationstdaxisx: 

  A numeric field in units of ‘g’s representing the average standard deviation x-axis component of the axial body motion acceleration.


- timebodyaccelerationstdaxisy:

  A numeric field in units of ‘g’s representing the average standard deviation y-axis component of the axial body motion acceleration.


- timebodyaccelerationstdaxisz: 

  A numeric field in units of ‘g’s representing the average standard deviation z-axis component of the axial body motion acceleration.


- timegravityaccelerationstdaxisx: 

  A numeric field in units of ‘g’s representing the average standard deviation x-axis component of the axial linear gravitational force acceleration.


- timegravityaccelerationstdaxisy:

  A numeric field in units of ‘g’s representing the average standard deviation y-axis component of the axial linear gravitational force acceleration.


- timegravityaccelerationstdaxisz:

  A numeric field in units of ‘g’s representing the average standard deviation z-axis component of the axial linear gravitational force acceleration.


- timebodyaccelerationjerkstdaxisx:

  A numeric field in units of ‘g’s representing the average standard deviation x-axis component of the axial body acceleration jerk signals.


- timebodyaccelerationjerkstdaxisy:

  A numeric field in units of ‘g’s representing the average standard deviation y-axis component of the axial body acceleration jerk signals.


- timebodyaccelerationjerkstdaxisz: 

  A numeric field in units of ‘g’s representing the average standard deviation z-axis component of the axial body acceleration jerk signals.


- timeangularvelocitystdaxisx: 

  A numeric field in units of rad/sec representing the average standard deviation x-axis component of the axial angular velocity.


- timeangularvelocitystdaxisy: 

  A numeric field in units of rad/sec representing the average standard deviation y-axis component of the axial angular velocity.


- timeangularvelocitystdaxisz: 

  A numeric field in units of rad/sec representing the average standard deviation z-axis component of the axial angular velocity.


- timeangularvelocityjerkstdaxisx: 

  A numeric field in units of rad/sec representing the average standard deviation x-axis component of the axial angular velocity jerk signals.


- timeangularvelocityjerkstdaxisy: 

  A numeric field in units of rad/sec representing the average standard deviation y-axis component of the axial angular velocity jerk signals.


- timeangularvelocityjerkstdaxisz: 

  A numeric field in units of rad/sec representing the average standard deviation y-axis component of the axial angular velocity jerk signals.


- timebodyaccelerationmagstd: 

  A numeric field in units of ‘g’s representing the average standard deviation magnitude of the body motion acceleration.   


- timegravityaccelerationmagstd: 

  A numeric field in units of ‘g’s representing the average standard deviation of the magnitude of the axial linear gravitational force acceleration.   


- timebodyaccelerationjerkmagstd: 

  A numeric field in units of ‘g’s representing the average standard deviation of the magnitude of the axial body acceleration jerk signals.


- timeangularvelocitymagstd: 

  A numeric field in units of rad/sec representing the average standard deviation of the magnitude of the angular velocity


- timeangularvelocityjerkmagstd: 

  A numeric field in units of rad/sec representing the average standard deviation of the magnitude of the angular velocity jerk signals.


- freqbodyaccelerationstdaxisx: 

  The average of the Fast Fourier Transform (FFT) of the standard deviation of the x-axis component of the axial body motion acceleration frequency.


- freqbodyaccelerationstdaxisy: 

  The average of the Fast Fourier Transform (FFT) of the standard deviation of the y-axis component of the axial body motion acceleration frequency.


- freqbodyaccelerationstdaxisz: 

  The average of the Fast Fourier Transform (FFT) of the standard deviation of the z-axis component of the axial body motion acceleration frequency.


- freqbodyaccelerationjerkstdaxisx: 

  The average of the Fast Fourier Transform (FFT) of the standard deviation of the x-axis component of the axial angular velocity jerk signal frequency.


- freqbodyaccelerationjerkstdaxisy: 

  The average of the Fast Fourier Transform (FFT) of the standard deviation of the y-axis component of the axial angular velocity jerk signal frequency.


- freqbodyaccelerationjerkstdaxisz: 

  The average of the Fast Fourier Transform (FFT) of the standard deviation of the z-axis component of the axial angular velocity jerk signal frequency.


- freqangularvelocitystdaxisx: 

  The average of the Fast Fourier Transform (FFT) of the standard deviation of the x-axis component of the axial angular velocity frequency.


- freqangularvelocitystdaxisy: 

  The average of the Fast Fourier Transform (FFT) of the standard deviation of the y-axis component of the axial angular velocity frequency.


- freqangularvelocitystdaxisz: 

  The average of the Fast Fourier Transform (FFT) of the standard deviation of the z-axis component of the axial angular velocity frequency.


- freqbodyaccelerationmagstd: 

  The average of the Fast Fourier Transform (FFT) of the standard deviation of the magnitude of the body motion acceleration frequency.   


- freqbodyaccelerationjerkmagstd: 

  The average of the Fast Fourier Transform (FFT) of the standard deviation of the magnitude of the of the body motion acceleration jerk signal frequency. 


- freqangularvelocitymagstd: 

  The average of the Fast Fourier Transform (FFT) of the standard deviation of the magnitude of the angular velocity jerk signal frequency.   


- freqangularvelocityjerkmagstd: 

  The average of the Fast Fourier Transform (FFT) of the standard deviation of the magnitude of the angular velocity jerk signal frequency.   



##Variables excluded from the tidy data set

There were some variables that contained the word “mean” that were excluded from the tidy data set because they represented signal calculations for meanFreq()and angle(), which have calculations that differ from a straightforward mean.
