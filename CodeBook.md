## DATA DICTIONARY - Human Activity Recognition Using Smartphones Dataset
Original dataset was obtained by experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years.
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured.

### Original Dataset Transformations
Original dataset was obtained in 'raw' form i.e. in following separate files:
* activity_labels.txt
* features.txt
* subject_train.txt
* X_train.txt
* y_train.txt
* subject_test.txt
* X_test.txt
* y_test.txt

Each file was read and corresponding dataset was obtained.
To gain the total dataset, first subject_train, x_train and y_train dataset were merged into one dataset. The same was done for test datasets.
This createad train dataset and test dataset, which where then merged into total dataset.
From total dataset only measurements on mean and standard deviation were extracted - in total 66 variables.
Along with the subject identifier and activity identifier, total dataset contained 68 variables.
Activity identifier was then replaced with the activity label and named properly. 
Also, each variable from features was given a corresponding name in human readable form.
To obtain a tidy data set, average of each variable for each activity and each subject was calculated.
This created final data set with 180 observations and 68 variables.

For each observation in dataset it is provided:
* An identifier of the subject who carried out the experiment.
* Its activity label. 
* A 66-feature vector with time and frequency domain variables. 

### Feature Selection 
====================
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these 3-dimensional signals were calculated using the Euclidean norm (tBodyAccMagnitude, tGravityAccMagnitude, tBodyAccJerkMagnitude, tBodyGyroMagnitude, tBodyGyroJerkMagnitude). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMagnitude, fBodyGyroMagnitude, fBodyGyroJerkMagnitude.
Note the 'f' to indicate frequency domain signals.

These signals were used to estimate variables of the feature vector for each pattern - 'X/Y/Z' is used to denote 3-axial signals in the X, Y and Z directions:
*tBodyAccXYZ
*tGravityAccXYZ
*tBodyAccJerkXYZ
*tBodyGyroXYZ
*tBodyGyroJerkXYZ
*tBodyAccMagnitude
*tGravityAccMagnitude
*tBodyAccJerkMagnitude
*tBodyGyroMagnitude
*tBodyGyroJerkMagnitude
*fBodyAccXYZ
*fBodyAccJerkXYZ
*fBodyGyroXYZ
*fBodyAccMagnitude
*fBodyAccJerkMagnitude
*fBodyGyroMagnitude
*fBodyGyroJerkMagnitude

The set of variables that were estimated from these signals are: 
**MeanValue**: Mean Value
**StandardDeviation**: Standard Deviation

Features are normalized and bounded within [-1,1].

### Variables
**SubjectID**
* Test Subject Identifier 
* Value Range: [1, 30]
* Unit: [-]

**ActivityLabel**
* Label of Measured Activity
* Values: LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS
* Unit: [-]

**tBodyAccMeanValueX**
* Mean Value of Body Acceleration Signal - X-Axis Direction
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tBodyAccMeanValueY**
* Mean Value of Body Acceleration Signal - Y-Axis Direction
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tBodyAccMeanValueZ**
* Mean Value of Body Acceleration Signal - Z-Axis Direction
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tGravityAccMeanValueX**
* Mean Value of Gravity Acceleration Signal - X-Axis Direction
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tGravityAccMeanValueY**
* Mean Value of Gravity Acceleration Signal - Y-Axis Direction
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tGravityAccMeanValueZ**
* Mean Value of Gravity Acceleration Signal - Z-Axis Direction
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tBodyAccJerkMeanValueX**
* Mean Value of Body Acceleration Signal Derived in Time - X-Axis Direction
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tBodyAccJerkMeanValueY**
* Mean Value of Body Acceleration Signal Derived in Time - Y-Axis Direction
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tBodyAccJerkMeanValueZ**
* Mean Value of Body Acceleration Signal Derived in Time - Z-Axis Direction
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tBodyGyroMeanValueX**
* Mean Value of Angular Velocity Signal Measured by the Gyroscope - X-Axis Direction
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tBodyGyroMeanValueY**
* Mean Value of Angular Velocity Signal Measured by the Gyroscope - Y-Axis Direction
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tBodyGyroMeanValueZ**
* Mean Value of Angular Velocity Signal Measured by the Gyroscope - Z-Axis Direction
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tBodyGyroJerkMeanValueX**
* Mean Value of Angular Velocity Signal Measured by the Gyroscope, Derived in Time - X-Axis Direction
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tBodyGyroJerkMeanValueY**
* Mean Value of Angular Velocity Signal Measured by the Gyroscope, Derived in Time - Y-Axis Direction
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tBodyGyroJerkMeanValueZ**
* Mean Value of Angular Velocity Signal Measured by the Gyroscope, Derived in Time - Z-Axis Direction
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tBodyAccMagnitudeMeanValue**
* Mean Value of Body Acceleration Signal Magnitude (calculated using the Euclidean norm)
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tGravityAccMagnitudeMeanValue**
* Mean Value of Gravity Acceleration Signal Magnitude (calculated using the Euclidean norm)
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tBodyAccJerkMagnitudeMeanValue**
* Mean Value of Magnitude(Body Acceleration Signal Derived in Time), where Magnitude is calculated using the Euclidean norm
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tBodyGyroMagnitudeMeanValue**
* Mean Value of Angular Velocity Signal Magnitude (calculated using the Euclidean norm)
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tBodyGyroJerkMagnitudeMeanValue**
* Mean Value of Magnitude(Angular Velocity Signal Derived in Time), where Magnitude is calculated using the Euclidean norm
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**fBodyAccMeanValueX**
* Mean Value of Body Acceleration Signal - X-Axis Direction, after Fast Fourier Transform (FFT) was applied.
* Frequency Domain.
* Value Range: [-1, 1]
* Unit: [-]

**fBodyAccMeanValueY**
* Mean Value of Body Acceleration Signal - Y-Axis Direction, after Fast Fourier Transform (FFT) was applied.
* Frequency Domain.
* Value Range: [-1, 1]
* Unit: [-]

**fBodyAccMeanValueZ**
* Mean Value of Body Acceleration Signal - Z-Axis Direction, after Fast Fourier Transform (FFT) was applied.
* Frequency Domain.
* Value Range: [-1, 1]
* Unit: [-]

**fBodyAccJerkMeanValueX**
* Mean Value of Body Acceleration Signal Derived in Time - X-Axis Direction, after Fast Fourier Transform (FFT) was applied.
* Frequency Domain.
* Value Range: [-1, 1]
* Unit: [-]

**fBodyAccJerkMeanValueY**
* Mean Value of Body Acceleration Signal Derived in Time - Y-Axis Direction, after Fast Fourier Transform (FFT) was applied.
* Frequency Domain.
* Value Range: [-1, 1]
* Unit: [-]

**fBodyAccJerkMeanValueZ**
* Mean Value of Body Acceleration Signal Derived in Time - Z-Axis Direction, after Fast Fourier Transform (FFT) was applied.
* Frequency Domain.
* Value Range: [-1, 1]
* Unit: [-]

**fBodyGyroMeanValueX**
* Mean Value of Angular Velocity Signal Measured by the Gyroscope - X-Axis Direction, after Fast Fourier Transform (FFT) was applied.
* Frequency Domain.
* Value Range: [-1, 1]
* Unit: [-]

**fBodyGyroMeanValueY**
* Mean Value of Angular Velocity Signal Measured by the Gyroscope - Y-Axis Direction, after Fast Fourier Transform (FFT) was applied.
* Frequency Domain.
* Value Range: [-1, 1]
* Unit: [-]

**fBodyGyroMeanValueZ**
* Mean Value of Angular Velocity Signal Measured by the Gyroscope - Z-Axis Direction, after Fast Fourier Transform (FFT) was applied.
* Frequency Domain.
* Value Range: [-1, 1]
* Unit: [-]

**fBodyAccMagnitudeMeanValue**
* Mean Value of Body Acceleration Signal Magnitude (calculated using the Euclidean norm), after Fast Fourier Transform (FFT) was applied.
* Frequency Domain.
* Value Range: [-1, 1]
* Unit: [-]

**fBodyAccJerkMagnitudeMeanValue**
* Mean Value of Magnitude(Body Acceleration Signal Derived in Time), where Magnitude is calculated using the Euclidean norm; after Fast Fourier Transform (FFT) was applied.
* Frequency Domain.
* Value Range: [-1, 1]
* Unit: [-]

**fBodyGyroMagnitudeMeanValue**
* Mean Value of Angular Velocity Signal Magnitude (calculated using the Euclidean norm), after Fast Fourier Transform (FFT) was applied.
* Frequency Domain.
* Value Range: [-1, 1]
* Unit: [-]

**fBodyGyroJerkMagnitudeMeanValue**
* Mean Value of Magnitude(Angular Velocity Signal Derived in Time), where Magnitude is calculated using the Euclidean norm; after Fast Fourier Transform (FFT) was applied.
* Frequency Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tBodyAccStandardDeviationX**
* Standard Deviation Value of Body Acceleration Signal - X-Axis Direction
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tBodyAccStandardDeviationY**
* Standard Deviation Value of Body Acceleration Signal - Y-Axis Direction
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tBodyAccStandardDeviationZ**
* Standard Deviation Value of Body Acceleration Signal - Z-Axis Direction
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tGravityAccStandardDeviationX**
* Standard Deviation Value of Gravity Acceleration Signal - X-Axis Direction
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tGravityAccStandardDeviationY**
* Standard Deviation Value of Gravity Acceleration Signal - Y-Axis Direction
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tGravityAccStandardDeviationZ**
* Standard Deviation Value of Gravity Acceleration Signal - Z-Axis Direction
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tBodyAccJerkStandardDeviationX**
* Standard Deviation Value of Body Acceleration Signal Derived in Time - X-Axis Direction
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tBodyAccJerkStandardDeviationY**
* Standard Deviation Value of Body Acceleration Signal Derived in Time - Y-Axis Direction
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tBodyAccJerkStandardDeviationZ**
* Standard Deviation Value of Body Acceleration Signal Derived in Time - Z-Axis Direction
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tBodyGyroStandardDeviationX**
* Standard Deviation Value of Angular Velocity Signal Measured by the Gyroscope - X-Axis Direction
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tBodyGyroStandardDeviationY**
* Standard Deviation Value of Angular Velocity Signal Measured by the Gyroscope - Y-Axis Direction
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tBodyGyroStandardDeviationZ**
* Standard Deviation Value of Angular Velocity Signal Measured by the Gyroscope - Z-Axis Direction
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tBodyGyroJerkStandardDeviationX**
* Standard Deviation Value of Angular Velocity Signal Measured by the Gyroscope, Derived in Time - X-Axis Direction
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tBodyGyroJerkStandardDeviationY**
* Standard Deviation Value of Angular Velocity Signal Measured by the Gyroscope, Derived in Time - Y-Axis Direction
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tBodyGyroJerkStandardDeviationZ**
* Standard Deviation Value of Angular Velocity Signal Measured by the Gyroscope, Derived in Time - Z-Axis Direction
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tBodyAccMagnitudeStandardDeviation**
* Standard Deviation Value of Body Acceleration Signal Magnitude (calculated using the Euclidean norm)
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tGravityAccMagnitudeStandardDeviation**
* Standard Deviation Value of Gravity Acceleration Signal Magnitude (calculated using the Euclidean norm)
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tBodyAccJerkMagnitudeStandardDeviation**
* Standard Deviation Value of Magnitude(Body Acceleration Signal Derived in Time), where Magnitude is calculated using the Euclidean norm
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tBodyGyroMagnitudeStandardDeviation**
* Standard Deviation Value of Angular Velocity Signal Magnitude (calculated using the Euclidean norm)
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**tBodyGyroJerkMagnitudeStandardDeviation**
* Standard Deviation Value of Magnitude(Angular Velocity Signal Derived in Time), where Magnitude is calculated using the Euclidean norm
* Time Domain.
* Value Range: [-1, 1]
* Unit: [-]

**fBodyAccStandardDeviationX**
* Standard Deviation Value of Body Acceleration Signal - X-Axis Direction, after Fast Fourier Transform (FFT) was applied.
* Frequency Domain.
* Value Range: [-1, 1]
* Unit: [-]

**fBodyAccStandardDeviationY**
* Standard Deviation Value of Body Acceleration Signal - Y-Axis Direction, after Fast Fourier Transform (FFT) was applied.
* Frequency Domain.
* Value Range: [-1, 1]
* Unit: [-]

**fBodyAccStandardDeviationZ**
* Standard Deviation Value of Body Acceleration Signal - Z-Axis Direction, after Fast Fourier Transform (FFT) was applied.
* Frequency Domain.
* Value Range: [-1, 1]
* Unit: [-]

**fBodyAccJerkStandardDeviationX**
* Standard Deviation Value of Body Acceleration Signal Derived in Time - X-Axis Direction, after Fast Fourier Transform (FFT) was applied.
* Frequency Domain.
* Value Range: [-1, 1]
* Unit: [-]

**fBodyAccJerkStandardDeviationY**
* Standard Deviation Value of Body Acceleration Signal Derived in Time - Y-Axis Direction, after Fast Fourier Transform (FFT) was applied.
* Frequency Domain.
* Value Range: [-1, 1]
* Unit: [-]

**fBodyAccJerkStandardDeviationZ**
* Standard Deviation Value of Body Acceleration Signal Derived in Time - Z-Axis Direction, after Fast Fourier Transform (FFT) was applied.
* Frequency Domain.
* Value Range: [-1, 1]
* Unit: [-]

**fBodyGyroStandardDeviationX**
* Standard Deviation Value of Angular Velocity Signal Measured by the Gyroscope - X-Axis Direction, after Fast Fourier Transform (FFT) was applied.
* Frequency Domain.
* Value Range: [-1, 1]
* Unit: [-]

**fBodyGyroStandardDeviationY**
* Standard Deviation Value of Angular Velocity Signal Measured by the Gyroscope - Y-Axis Direction, after Fast Fourier Transform (FFT) was applied.
* Frequency Domain.
* Value Range: [-1, 1]
* Unit: [-]

**fBodyGyroStandardDeviationZ**
* Standard Deviation Value of Angular Velocity Signal Measured by the Gyroscope - Z-Axis Direction, after Fast Fourier Transform (FFT) was applied.
* Frequency Domain.
* Value Range: [-1, 1]
* Unit: [-]

**fBodyAccMagnitudeStandardDeviation**
* Standard Deviation Value of Body Acceleration Signal Magnitude (calculated using the Euclidean norm), after Fast Fourier Transform (FFT) was applied.
* Frequency Domain.
* Value Range: [-1, 1]
* Unit: [-]

**fBodyAccJerkMagnitudeStandardDeviation**
* Standard Deviation Value of Magnitude(Body Acceleration Signal Derived in Time), where Magnitude is calculated using the Euclidean norm; after Fast Fourier Transform (FFT) was applied.
* Frequency Domain.
* Value Range: [-1, 1]
* Unit: [-]

**fBodyGyroMagnitudeStandardDeviation**
* Standard Deviation Value of Angular Velocity Signal Magnitude (calculated using the Euclidean norm), after Fast Fourier Transform (FFT) was applied.
* Frequency Domain.
* Value Range: [-1, 1]
* Unit: [-]

**fBodyGyroJerkMagnitudeStandardDeviation**
* Standard Deviation Value of Magnitude(Angular Velocity Signal Derived in Time), where Magnitude is calculated using the Euclidean norm; after Fast Fourier Transform (FFT) was applied.
* Frequency Domain.
* Value Range: [-1, 1]
* Unit: [-]