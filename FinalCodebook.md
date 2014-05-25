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
 
1) activity 
- activity code number (1 through 6) from the activity labels file

2) activityname
- activity name corresponding to the code number
	- 1 = "Walking"
	- 2 = "Walking_Upstairs"
	- 3 = "Walking_Downstairs"
	- 4 = "Sitting"
	- 5 = "Standing"
	- 6 = "Laying"
3) subject
- subject number from the subject text files, corresponding to volunteer 1 through 30

4) timebodyaccelerometermeanxdirection
- average of the mean of the body linear acceleration dervied in time from the accelerometer from the axial signal in the X direction

5) timebodyaccelerometermeanydirection
- average of the mean of the body linear acceleration dervied in time from the accelerometer from the axial signal in the y direction

6) timebodyaccelerometermeanzdirection
- average of the mean of the body linear acceleration dervied in time from the accelerometer from the axial signal in the z direction

7) timegravityaccelerometermeanxdirection
- average of the mean of the gravity acceleration dervied in time from the accelerometer from the axial signal in the X direction

8) timegravityaccelerometermeanydirection
- average of the mean of the gravity acceleration dervied in time from the accelerometer from the axial signal in the y direction

9) timegravityaccelerometermeanzdirection
- average of the mean of the gravity acceleration dervied in time from the accelerometer from the axial signal in the z direction

10) timebodyaccelerometerjerkmeanxdirection
- average of the mean of the jerk signal of body linear acceleration dervied in time from the accelerometer from the axial signal in the X direction

11) timebodyaccelerometerjerkmeanydirection
- average of the mean of the jerk signal of body linear acceleration dervied in time from the accelerometer from the axial signal in the y direction

12) timebodyaccelerometerjerkmeanzdirection
- average of the mean of the jerk signal of body linear acceleration dervied in time from the accelerometer from the axial signal in the z direction

13) timebodygyroscopemeanxdirection
- average of the mean of the body linear acceleration dervied in time from the gyroscope from the axial signal in the X direction

14) timebodygyroscopemeanydirection
- average of the mean of the body linear acceleration dervied in time from the gyroscope from the axial signal in the y direction

15) timebodygyroscopemeanzdirection
- average of the mean of the body linear acceleration dervied in time from the gyroscope from the axial signal in the z direction

16) timebodygyroscopejerkmeanxdirection
- average of the mean of the jerk signal of body linear acceleration dervied in time from the gyroscope from the axial signal in the X direction

17) timebodygyroscopejerkmeanydirection
- average of the mean of the jerk signal of body linear acceleration dervied in time from the gyroscope from the axial signal in the y direction

18) timebodygyroscopejerkmeanzdirection
- average of the mean of the jerk signal of body linear acceleration dervied in time from the gyroscope from the axial signal in the z direction

19) timebodyaccelerometermagnitudemean
- average of the mean of the magnitude of the body linear acceleration signal derived in time from the accelerometer using the Euclidean norm

20) timegravityaccelerometermagnitudemean
- average of the mean of the magnitude of the gravity acceleration signal derived in time from the accelerometer using the Euclidean norm

21) timebodyaccelerometerjerkmagnitudemean
- average of the mean of the jerk signal of the magnitude of the body linear acceleration signal derived in time from the accelerometer using the Euclidean norm

22) timebodygyroscopemagnitudemean
- average of the mean of the magnitude of the body linear acceleration signal derived in time from the gyroscope using the Euclidean norm

23) timebodygyroscopejerkmagnitudemean
- average of the mean of the jerk signal of the magnitude of the body linear acceleration signal derived in time from the gyroscope using the Euclidean norm

24) frequencybodyaccelerometermeanxdirection
- average of the mean of the body linear acceleration derived using Fast Fourier Transform from the accelerometer from the axial signal in the x direction

25) frequencybodyaccelerometermeanydirection
- average of the mean of the body linear acceleration derived using Fast Fourier Transform from the accelerometer from the axial signal in the y direction

26) frequencybodyaccelerometermeanzdirection
- average of the mean of the body linear acceleration derived using Fast Fourier Transform from the accelerometer from the axial signal in the z direction

27) frequencyaccelerometerjerkmeanxdirection
- average of the mean of the jerk signal of body linear acceleration dervied using Fast Fourier Transform from the accelerometer from the axial signal in the X direction

28) frequencyaccelerometerjerkmeanydirection
- average of the mean of the jerk signal of body linear acceleration dervied using Fast Fourier Transform from the accelerometer from the axial signal in the y direction

29) frequencyaccelerometerjerkmeanzdirection
- average of the mean of the jerk signal of body linear acceleration dervied using Fast Fourier Transform from the accelerometer from the axial signal in the z direction

30) frequencybodygyroscopemeanxdirection
- average of the mean of the body linear acceleration dervied using Fast Fourier Transform from the gyroscope from the axial signal in the X direction

31) frequencybodygyroscopemeanydirection
- average of the mean of the body linear acceleration dervied using Fast Fourier Transform from the gyroscope from the axial signal in the y direction

32) frequencybodygyroscopemeanzdirection
- average of the mean of the body linear acceleration dervied using Fast Fourier Transform from the gyroscope from the axial signal in the z direction

33) frequencybodyaccelerometermagnitudemean
- average of the mean of the magnitude of the body linear acceleration signal derived using Fast Fourier Transform from the accelerometer using the Euclidean norm

34) frequencybodybodyaccelerometerjerkmagnitudemean
- average of the mean of the jerk signal of the magnitude of the body linear acceleration signal derived using Fast Fourier Transform from the accelerometer using the Euclidean norm

35) frequencybodybodygyroscopemagnitudemean
- average of the mean of the magnitude of the body linear acceleration signal derived using Fast Fourier Transform from the gyroscope using the Euclidean norm

36) frequencybodybodygyroscopejerkmagnitudemean
- average of the mean of the jerk signal of the magnitude of the body linear acceleration signal derived using Fast Fourier Transform from the gyroscope using the Euclidean norm

37) timebodyaccelerometerstandarddeviationxdirection
- average of the standard deviation of the body linear acceleration dervied in time from the accelerometer from the axial signal in the X direction

38) timebodyaccelerometerstandarddeviationydirection
- average of the standard deviation of the body linear acceleration dervied in time from the accelerometer from the axial signal in the y direction

39) timebodyaccelerometerstandarddeviationzdirection
- average of the standard deviation of the body linear acceleration dervied in time from the accelerometer from the axial signal in the z direction

40) timegravityaccelerometerstandarddeviationxdirection
- average of the standard deviation of the gravity acceleration dervied in time from the accelerometer from the axial signal in the X direction

41) timegravityaccelerometerstandarddeviationydirection
- average of the standard deviation of the gravity acceleration dervied in time from the accelerometer from the axial signal in the y direction

42) timegravityaccelerometerstandarddeviationzdirection
- average of the standard deviation of the gravity acceleration dervied in time from the accelerometer from the axial signal in the z direction

43) timebodyaccelerometerjerkstandarddeviationxdirection
- average of the standard deviation of the jerk signal of body linear acceleration dervied in time from the accelerometer from the axial signal in the X direction

44) timebodyaccelerometerjerkstandarddeviationydirection
- average of the standard deviation of the jerk signal of body linear acceleration dervied in time from the accelerometer from the axial signal in the y direction

45) timebodyaccelerometerjerkstandarddeviationzdirection
- average of the standard deviation of the jerk signal of body linear acceleration dervied in time from the accelerometer from the axial signal in the z direction

46) timebodygyroscopestandarddeviationxdirection
- average of the standard deviation of the body linear acceleration dervied in time from the gyroscope from the axial signal in the X direction

47) timebodygyroscopestandarddeviationydirection
- average of the standard deviation of the body linear acceleration dervied in time from the gyroscope from the axial signal in the y direction

48) timebodygyroscopestandarddeviationzdirection
- average of the standard deviation of the body linear acceleration dervied in time from the gyroscope from the axial signal in the z direction

49) timebodygyroscopejerkstandarddeviationxdirection
- average of the standard deviation of the jerk signal of body linear acceleration dervied in time from the gyroscope from the axial signal in the X direction

50) timebodygyroscopejerkstandarddeviationydirection
- average of the standard deviation of the jerk signal of body linear acceleration dervied in time from the gyroscope from the axial signal in the y direction

51) timebodygyroscopejerkstandarddeviationzdirection
- average of the standard deviation of the jerk signal of body linear acceleration dervied in time from the gyroscope from the axial signal in the z direction

52) timebodyaccelerometermagnitudestandarddeviation
- average of the standard deviation of the magnitude of the body linear acceleration signal derived in time from the accelerometer using the Euclidean norm

53) timegravityaccelerometermagnitudestandarddeviation
- average of the standard deviation of the magnitude of the gravity acceleration signal derived in time from the accelerometer using the Euclidean norm

54) timebodyaccelerometerjerkmagnitudestandarddeviation
- average of the standard deviation of the jerk signal of the magnitude of the body linear acceleration signal derived in time from the accelerometer using the Euclidean norm

55) timebodygyroscopemagnitudestandarddeviation
- average of the standard deviation of the magnitude of the body linear acceleration signal derived in time from the gyroscope using the Euclidean norm

56) timebodygyroscopejerkmagnitudestandarddeviation
- average of the standard deviation of the jerk signal of the magnitude of the body linear acceleration signal derived in time from the gyroscope using the Euclidean norm

57) frequencybodyaccelerometerstandarddeviationxdirection
- average of the standard deviation of the body linear acceleration derived using Fast Fourier Transform from the accelerometer from the axial signal in the x direction

58) frequencybodyaccelerometerstandarddeviationydirection
- average of the standard deviation of the body linear acceleration derived using Fast Fourier Transform from the accelerometer from the axial signal in the y direction

59) frequencybodyaccelerometerstandarddeviationzdirection
- average of the standard deviation of the body linear acceleration derived using Fast Fourier Transform from the accelerometer from the axial signal in the z direction

60) frequencyaccelerometerjerkstandarddeviationxdirection
- average of the standard deviation of the jerk signal of body linear acceleration dervied using Fast Fourier Transform from the accelerometer from the axial signal in the X direction

61) frequencyaccelerometerjerkstandarddeviationydirection
- average of the standard deviation of the jerk signal of body linear acceleration dervied using Fast Fourier Transform from the accelerometer from the axial signal in the y direction

62) frequencyaccelerometerjerkstandarddeviationzdirection
- average of the standard deviation of the jerk signal of body linear acceleration dervied using Fast Fourier Transform from the accelerometer from the axial signal in the z direction

63) frequencybodygyroscopestandarddeviationxdirection
- average of the standard deviation of the body linear acceleration dervied using Fast Fourier Transform from the gyroscope from the axial signal in the X direction

64) frequencybodygyroscopestandarddeviationydirection
- average of the standard deviation of the body linear acceleration dervied using Fast Fourier Transform from the gyroscope from the axial signal in the y direction

65) frequencybodygyroscopestandarddeviationzdirection
- average of the standard deviation of the body linear acceleration dervied using Fast Fourier Transform from the gyroscope from the axial signal in the z direction

66) frequencybodyaccelerometermagnitudestandarddeviation
- average of the standard deviation of the magnitude of the body linear acceleration signal derived using Fast Fourier Transform from the accelerometer using the Euclidean norm

67) frequencybodybodyaccelerometerjerkmagnitudestandarddeviation
- average of the standard deviation of the jerk signal of the magnitude of the body linear acceleration signal derived using Fast Fourier Transform from the accelerometer using the Euclidean norm

68) frequencybodybodygyroscopemagnitudestandarddeviation
- average of the standard deviation of the magnitude of the body linear acceleration signal derived using Fast Fourier Transform from the gyroscope using the Euclidean norm

69) frequencybodybodygyroscopejerkmagnitudestandarddeviation
- average of the standard deviation of the jerk signal of the magnitude of the body linear acceleration signal derived using Fast Fourier Transform from the gyroscope using the Euclidean norm
