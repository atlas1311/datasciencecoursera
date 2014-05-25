Variable explanations used in the analysis -

subject: numeric variable that identifies the participant.
label: character variable showing the activity that produced the data.
activity: numeric variable that corresponds with the character label.
group: numeric variable that identifies which group the data came from. 1 - test, 2 - train.
Below identifies the type of data that the smartphone collected.
feature                 description
 1:       1           tBodyAcc-mean()-X
 2:       2           tBodyAcc-mean()-Y
 3:       3           tBodyAcc-mean()-Z
 4:       4            tBodyAcc-std()-X
 5:       5            tBodyAcc-std()-Y
 6:       6            tBodyAcc-std()-Z
 7:      41        tGravityAcc-mean()-X
 8:      42        tGravityAcc-mean()-Y
 9:      43        tGravityAcc-mean()-Z
10:      44         tGravityAcc-std()-X
11:      45         tGravityAcc-std()-Y
12:      46         tGravityAcc-std()-Z
13:      81       tBodyAccJerk-mean()-X
14:      82       tBodyAccJerk-mean()-Y
15:      83       tBodyAccJerk-mean()-Z
16:      84        tBodyAccJerk-std()-X
17:      85        tBodyAccJerk-std()-Y
18:      86        tBodyAccJerk-std()-Z
19:     121          tBodyGyro-mean()-X
20:     122          tBodyGyro-mean()-Y
21:     123          tBodyGyro-mean()-Z
22:     124           tBodyGyro-std()-X
23:     125           tBodyGyro-std()-Y
24:     126           tBodyGyro-std()-Z
25:     161      tBodyGyroJerk-mean()-X
26:     162      tBodyGyroJerk-mean()-Y
27:     163      tBodyGyroJerk-mean()-Z
28:     164       tBodyGyroJerk-std()-X
29:     165       tBodyGyroJerk-std()-Y
30:     166       tBodyGyroJerk-std()-Z
31:     201          tBodyAccMag-mean()
32:     202           tBodyAccMag-std()
33:     214       tGravityAccMag-mean()
34:     215        tGravityAccMag-std()
35:     227      tBodyAccJerkMag-mean()
36:     228       tBodyAccJerkMag-std()
37:     240         tBodyGyroMag-mean()
38:     241          tBodyGyroMag-std()
39:     253     tBodyGyroJerkMag-mean()
40:     254      tBodyGyroJerkMag-std()
41:     266           fBodyAcc-mean()-X
42:     267           fBodyAcc-mean()-Y
43:     268           fBodyAcc-mean()-Z
44:     269            fBodyAcc-std()-X
45:     270            fBodyAcc-std()-Y
46:     271            fBodyAcc-std()-Z
47:     345       fBodyAccJerk-mean()-X
48:     346       fBodyAccJerk-mean()-Y
49:     347       fBodyAccJerk-mean()-Z
50:     348        fBodyAccJerk-std()-X
51:     349        fBodyAccJerk-std()-Y
52:     350        fBodyAccJerk-std()-Z
53:     424          fBodyGyro-mean()-X
54:     425          fBodyGyro-mean()-Y
55:     426          fBodyGyro-mean()-Z
56:     427           fBodyGyro-std()-X
57:     428           fBodyGyro-std()-Y
58:     429           fBodyGyro-std()-Z
59:     503          fBodyAccMag-mean()
60:     504           fBodyAccMag-std()
61:     516  fBodyBodyAccJerkMag-mean()
62:     517   fBodyBodyAccJerkMag-std()
63:     529     fBodyBodyGyroMag-mean()
64:     530      fBodyBodyGyroMag-std()
65:     542 fBodyBodyGyroJerkMag-mean()
66:     543  fBodyBodyGyroJerkMag-std()

Method - 
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Using the text files provided, I pulled out the required information and devloped the run_analysis.R script to perform the analysis.







