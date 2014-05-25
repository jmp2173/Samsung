##Average Mean and Standard Deviation of Human Activity Recognition Using Smartphones Dataset

Original data (mean and standard deviation as well as column headers) comes from the following publication:
*Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
*I unzipped the following file:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The final dataset combines the following Samsung data files:
*features.txt : List of the features - end up being the column headers in the final dataset.
*X_train.txt : Training dataset.
*X_test.txt : Test dataset.
*Y_train.txt : Training labels for the activity number performed.
*Y_test.txt : Test labels for the activity number performed.
*subject_test.txt : Reveals which subject 1:30 who performed the given activity.
*subject_train.txt : Reveals which subject 1:30 who performed the given activity.
*activity_labels.txt : Provides the activity name label to the activity number.

These datasets were collected using 30 volunteers, age 19-48. Each person did the six activities in the activity text files (walking, walking upstairs, walking downstairs, sitting, standing, and laying) while wearing a Samsung Galaxy S II.  The phone was able to record 3 axial linear acceleration and angular velocity using the accelerometer and gyroscope.  These became the variables in the test and train datasets.  The test dataset is made up of 30% of the participants; the training dataset 70%.  The subjects were randomly selected.

Body linear acceleration was calculated to get Jerk signals (ex: timebodyaccelerationjerkmeanxdirection) and magnitude was calculated using Euclidean norm for variables such as timebodyaccelerationmagnitude.  Fast Fourier Transform was used for some of the signals to get variables such as frequencybodyaccelerometerxdirection.
 
To arrive at the final tidy dataset, I performed the following steps.  In order for the text files to be read, I was in the UCI HAR Dataset folder:
*Load the 8 text files above in R using read.table
*Change the headers of the activity_labels file to "activity" and "activity name" so that the activity names can be merged into the final dataset
*Use rbind to combine the X files (test and train); Y files (test and train); and subject files (test and train)
*Add headers to these files as necessary
*Combine these files using cbind to create the first dataset that will be converted into tidy data
*Extract the mean and standard deviation variables to create a smaller dataset as required, using grepl.  This eliminated all variables that did not have mean or standard deviation in the name.  meanFreq() variables were also omitted from this dataset, as it seemed redundant to average the frequency components into another variable.  
*Clean up the names to keep in line with tidy data rules (all lowercase, remove parentheses and dashes, & elongate all abbreviated terms)  
*To create the final tidy dataset, I used melt and dcast from the reshape2 R package to find the average of the means and standard deviations for all subjects performing each activity.  This created a dataset of 180 rows and 68 columns.  The columns are the variables of the feature vector in the 3-axial signals in the X, Y, and Z directions.
*The final step was to add labels to the activities by merging the activity_labels file with the final dataset.  The point of this was to make it more clear that activity "1" corresponded to "walking", "2" to "walking upstairs", etc.

 
