#Samsung Dataset Codebook

##Study Design

Original data (mean and standard deviation as well as column headers) comes from the following publication:
- Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
- I unzipped the following file:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The final dataset variables come from the following Samsung data files:
- features.txt : List of the features - end up being the column headers in the final dataset.
- X_train.txt : Training dataset.
- X_test.txt : Test dataset.
- Y_train.txt : Training labels for the activity number performed.
- Y_test.txt : Test labels for the activity number performed.
- subject_test.txt : Reveals which subject 1:30 who performed the given activity.
- subject_train.txt : Reveals which subject 1:30 who performed the given activity.
- activity_labels.txt : Provides the activity name label to the activity number.

These datasets were collected using 30 volunteers, age 19-48. Each person did the six activities in the activity text files (walking, walking upstairs, walking downstairs, sitting, standing, and laying) while wearing a Samsung Galaxy S II.  The phone was able to record 3 axial linear acceleration and angular velocity using the accelerometer and gyroscope.  These time domain signals were captured at a constant rate of 50 Hz and then were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz. The acceleration signal was then split into body and gravity acceleration signals (example:  timebodyacceleratorxdirection and timegraviityacceleratorxdirection) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.  These became the variables in the test and train datasets.  The test dataset is made up of 30% of the participants; the training dataset 70%.  The subjects were randomly selected.

Body linear acceleration was calculated to get Jerk signals (ex: timebodyaccelerationjerkmeanxdirection) and magnitude was calculated using Euclidean norm for variables such as timebodyaccelerationmagnitude.  Fast Fourier Transform was used for some of the signals to get variables such as frequencybodyaccelerometerxdirection.

The final data is an average of each variable based upon the activity performed by each subject (180 rows corresponding to the 6 activities performed by each of the 30 participants).  The variables are the means and standard deviations only, eliminating frequencymean, as it seemed redundant to take the average of the frequency variables into a new variable.

##Codebook
 
activity 
- activity code number (1 through 6) from the activity labels file


activityname
- activity name corresponding to the code number
	- 1 = "Walking"
	- 2 = "Walking_Upstairs"
	- 3 = "Walking_Downstairs"
	- 4 = "Sitting"
	- 5 = "Standing"
	- 6 = "Laying"

subject
- subject number from the subject text files, corresponding to volunteer 1 through 30

timebodyaccelerometermeanxdirection
- average of the mean of the body linear acceleration dervied in time from the accelerometer from the axial signal in the X direction

timebodyaccelerometermeanydirection
- average of the mean of the body linear acceleration dervied in time from the accelerometer from the axial signal in the y direction

timebodyaccelerometermeanzdirection
- average of the mean of the body linear acceleration dervied in time from the accelerometer from the axial signal in the z direction

timegravityaccelerometermeanxdirection
- average of the mean of the gravity acceleration dervied in time from the accelerometer from the axial signal in the X direction

timegravityaccelerometermeanydirection
- average of the mean of the gravity acceleration dervied in time from the accelerometer from the axial signal in the y direction

timegravityaccelerometermeanzdirection
- average of the mean of the gravity acceleration dervied in time from the accelerometer from the axial signal in the z direction

timebodyaccelerometerjerkmeanxdirection
- average of the mean of the jerk signal of body linear acceleration dervied in time from the accelerometer from the axial signal in the X direction

timebodyaccelerometerjerkmeanydirection
- average of the mean of the jerk signal of body linear acceleration dervied in time from the accelerometer from the axial signal in the y direction

timebodyaccelerometerjerkmeanzdirection
- average of the mean of the jerk signal of body linear acceleration dervied in time from the accelerometer from the axial signal in the z direction

timebodygyroscopemeanxdirection
- average of the mean of the body linear acceleration dervied in time from the gyroscope from the axial signal in the X direction

timebodygyroscopemeanydirection
- average of the mean of the body linear acceleration dervied in time from the gyroscope from the axial signal in the y direction

timebodygyroscopemeanzdirection
- average of the mean of the body linear acceleration dervied in time from the gyroscope from the axial signal in the z direction

timebodygyroscopejerkmeanxdirection
- average of the mean of the jerk signal of body linear acceleration dervied in time from the gyroscope from the axial signal in the X direction

timebodygyroscopejerkmeanydirection
- average of the mean of the jerk signal of body linear acceleration dervied in time from the gyroscope from the axial signal in the y direction

timebodygyroscopejerkmeanzdirection
- average of the mean of the jerk signal of body linear acceleration dervied in time from the gyroscope from the axial signal in the z direction

timebodyaccelerometermagnitudemean
- average of the mean of the magnitude of the body linear acceleration signal derived in time from the accelerometer using the Euclidean norm

timegravityaccelerometermagnitudemean
- average of the mean of the magnitude of the gravity acceleration signal derived in time from the accelerometer using the Euclidean norm

timebodyaccelerometerjerkmagnitudemean
- average of the mean of the jerk signal of the magnitude of the body linear acceleration signal derived in time from the accelerometer using the Euclidean norm

timebodygyroscopemagnitudemean
- average of the mean of the magnitude of the body linear acceleration signal derived in time from the gyroscope using the Euclidean norm

timebodygyroscopejerkmagnitudemean
- average of the mean of the jerk signal of the magnitude of the body linear acceleration signal derived in time from the gyroscope using the Euclidean norm

frequencybodyaccelerometermeanxdirection
- average of the mean of the body linear acceleration derived using Fast Fourier Transform from the accelerometer from the axial signal in the x direction

frequencybodyaccelerometermeanydirection
- average of the mean of the body linear acceleration derived using Fast Fourier Transform from the accelerometer from the axial signal in the y direction

frequencybodyaccelerometermeanzdirection
- average of the mean of the body linear acceleration derived using Fast Fourier Transform from the accelerometer from the axial signal in the z direction

frequencyaccelerometerjerkmeanxdirection
- average of the mean of the jerk signal of body linear acceleration dervied using Fast Fourier Transform from the accelerometer from the axial signal in the X direction

frequencyaccelerometerjerkmeanydirection
- average of the mean of the jerk signal of body linear acceleration dervied using Fast Fourier Transform from the accelerometer from the axial signal in the y direction

frequencyaccelerometerjerkmeanzdirection
- average of the mean of the jerk signal of body linear acceleration dervied using Fast Fourier Transform from the accelerometer from the axial signal in the z direction

frequencybodygyroscopemeanxdirection
- average of the mean of the body linear acceleration dervied using Fast Fourier Transform from the gyroscope from the axial signal in the X direction

frequencybodygyroscopemeanydirection
- average of the mean of the body linear acceleration dervied using Fast Fourier Transform from the gyroscope from the axial signal in the y direction

frequencybodygyroscopemeanzdirection
- average of the mean of the body linear acceleration dervied using Fast Fourier Transform from the gyroscope from the axial signal in the z direction

frequencybodyaccelerometermagnitudemean
- average of the mean of the magnitude of the body linear acceleration signal derived using Fast Fourier Transform from the accelerometer using the Euclidean norm

frequencybodybodyaccelerometerjerkmagnitudemean
- average of the mean of the jerk signal of the magnitude of the body linear acceleration signal derived using Fast Fourier Transform from the accelerometer using the Euclidean norm

frequencybodybodygyroscopemagnitudemean
- average of the mean of the magnitude of the body linear acceleration signal derived using Fast Fourier Transform from the gyroscope using the Euclidean norm

frequencybodybodygyroscopejerkmagnitudemean
- average of the mean of the jerk signal of the magnitude of the body linear acceleration signal derived using Fast Fourier Transform from the gyroscope using the Euclidean norm

timebodyaccelerometerstandarddeviationxdirection
- average of the standard deviation of the body linear acceleration dervied in time from the accelerometer from the axial signal in the X direction

timebodyaccelerometerstandarddeviationydirection
- average of the standard deviation of the body linear acceleration dervied in time from the accelerometer from the axial signal in the y direction

timebodyaccelerometerstandarddeviationzdirection
- average of the standard deviation of the body linear acceleration dervied in time from the accelerometer from the axial signal in the z direction

timegravityaccelerometerstandarddeviationxdirection
- average of the standard deviation of the gravity acceleration dervied in time from the accelerometer from the axial signal in the X direction

timegravityaccelerometerstandarddeviationydirection
- average of the standard deviation of the gravity acceleration dervied in time from the accelerometer from the axial signal in the y direction

timegravityaccelerometerstandarddeviationzdirection
- average of the standard deviation of the gravity acceleration dervied in time from the accelerometer from the axial signal in the z direction

timebodyaccelerometerjerkstandarddeviationxdirection
- average of the standard deviation of the jerk signal of body linear acceleration dervied in time from the accelerometer from the axial signal in the X direction

timebodyaccelerometerjerkstandarddeviationydirection
- average of the standard deviation of the jerk signal of body linear acceleration dervied in time from the accelerometer from the axial signal in the y direction

timebodyaccelerometerjerkstandarddeviationzdirection
- average of the standard deviation of the jerk signal of body linear acceleration dervied in time from the accelerometer from the axial signal in the z direction

timebodygyroscopestandarddeviationxdirection
- average of the standard deviation of the body linear acceleration dervied in time from the gyroscope from the axial signal in the X direction

timebodygyroscopestandarddeviationydirection
- average of the standard deviation of the body linear acceleration dervied in time from the gyroscope from the axial signal in the y direction

timebodygyroscopestandarddeviationzdirection
- average of the standard deviation of the body linear acceleration dervied in time from the gyroscope from the axial signal in the z direction

timebodygyroscopejerkstandarddeviationxdirection
- average of the standard deviation of the jerk signal of body linear acceleration dervied in time from the gyroscope from the axial signal in the X direction

timebodygyroscopejerkstandarddeviationydirection
- average of the standard deviation of the jerk signal of body linear acceleration dervied in time from the gyroscope from the axial signal in the y direction

timebodygyroscopejerkstandarddeviationzdirection
- average of the standard deviation of the jerk signal of body linear acceleration dervied in time from the gyroscope from the axial signal in the z direction

timebodyaccelerometermagnitudestandarddeviation
- average of the standard deviation of the magnitude of the body linear acceleration signal derived in time from the accelerometer using the Euclidean norm

timegravityaccelerometermagnitudestandarddeviation
- average of the standard deviation of the magnitude of the gravity acceleration signal derived in time from the accelerometer using the Euclidean norm

timebodyaccelerometerjerkmagnitudestandarddeviation
- average of the standard deviation of the jerk signal of the magnitude of the body linear acceleration signal derived in time from the accelerometer using the Euclidean norm

timebodygyroscopemagnitudestandarddeviation
- average of the standard deviation of the magnitude of the body linear acceleration signal derived in time from the gyroscope using the Euclidean norm

timebodygyroscopejerkmagnitudestandarddeviation
- average of the standard deviation of the jerk signal of the magnitude of the body linear acceleration signal derived in time from the gyroscope using the Euclidean norm

frequencybodyaccelerometerstandarddeviationxdirection
- average of the standard deviation of the body linear acceleration derived using Fast Fourier Transform from the accelerometer from the axial signal in the x direction

frequencybodyaccelerometerstandarddeviationydirection
- average of the standard deviation of the body linear acceleration derived using Fast Fourier Transform from the accelerometer from the axial signal in the y direction

frequencybodyaccelerometerstandarddeviationzdirection
- average of the standard deviation of the body linear acceleration derived using Fast Fourier Transform from the accelerometer from the axial signal in the z direction

frequencyaccelerometerjerkstandarddeviationxdirection
- average of the standard deviation of the jerk signal of body linear acceleration dervied using Fast Fourier Transform from the accelerometer from the axial signal in the X direction

frequencyaccelerometerjerkstandarddeviationydirection
- average of the standard deviation of the jerk signal of body linear acceleration dervied using Fast Fourier Transform from the accelerometer from the axial signal in the y direction

frequencyaccelerometerjerkstandarddeviationzdirection
- average of the standard deviation of the jerk signal of body linear acceleration dervied using Fast Fourier Transform from the accelerometer from the axial signal in the z direction

frequencybodygyroscopestandarddeviationxdirection
- average of the standard deviation of the body linear acceleration dervied using Fast Fourier Transform from the gyroscope from the axial signal in the X direction

frequencybodygyroscopestandarddeviationydirection
- average of the standard deviation of the body linear acceleration dervied using Fast Fourier Transform from the gyroscope from the axial signal in the y direction

frequencybodygyroscopestandarddeviationzdirection
- average of the standard deviation of the body linear acceleration dervied using Fast Fourier Transform from the gyroscope from the axial signal in the z direction

frequencybodyaccelerometermagnitudestandarddeviation
- average of the standard deviation of the magnitude of the body linear acceleration signal derived using Fast Fourier Transform from the accelerometer using the Euclidean norm

frequencybodybodyaccelerometerjerkmagnitudestandarddeviation
- average of the standard deviation of the jerk signal of the magnitude of the body linear acceleration signal derived using Fast Fourier Transform from the accelerometer using the Euclidean norm

frequencybodybodygyroscopemagnitudestandarddeviation
- average of the standard deviation of the magnitude of the body linear acceleration signal derived using Fast Fourier Transform from the gyroscope using the Euclidean norm

frequencybodybodygyroscopejerkmagnitudestandarddeviation
- average of the standard deviation of the jerk signal of the magnitude of the body linear acceleration signal derived using Fast Fourier Transform from the gyroscope using the Euclidean norm
