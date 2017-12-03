# Getting and Cleaning Data Course Project


This code merges train and test data and selects those columns containing mean and standard deviation observations, grouping them according to the subject and activity.

The first section of the code imports the data provided both for train and test:

_ The "X" files containing the measures made in the experiment
_ The "y" files containing the activities numbers
_ The "subject" files containing the number of subject in the experiment
_ The "features.txt" file containing the info about each variable
_ The "activity_labels.txt" file containing descripction of each activity number.

The second section of the code names each variable for both train and test sets: the names for the first 561 variables are set equal to those listed in "features.txt"; the remaining 2 variables are named "Subject" and "Activity"

The third section defines new data.frames by joining "Subject" and "Activity" data to the mesurements data frame.

The following line merges train and test data frames.

Next line selects columns 1 to 6 (XYX means and XYZ standard deviations for body acceleration), columns 41 to 46 (same info related to gravity acceleration), columns 81 to 86 (same info related to tBodyAccJerk), column 562 (subject) and column 563 (activity number)

The following line changes the activity number by the activity descrption as it is named in the "activity_labels.txt" file

The next line groups the data frame by subject and activity

Finally, we summarize in such a way that we abtain the mean for every measurement grouped according to subject and activity.

 





 
