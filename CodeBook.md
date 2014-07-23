Code Book
=========

Record
------

Before any further processing, e3ach row of the training/test data set (stored in x_train/x_test variable) forms a record. Each record has 561 measurements corresponding to the 561 features respectively made in each activity of each subject.


Variables
---------

The following variables are created in the script:

  * activity_labels: mapping table between the activity labels and IDs read from activity_labels.txt 
  * features: mapping table between feature names and IDs read from features.txt
  * subject_train: subject of each record of the training data set read from subject_train.txt
  * x_train: the training data set with each row as a record, read from X_train.txt 
  * y_train: activity of each record of the training data set read from y_train.txt
  * subject_test: subject of each record of the test data set read from test_train.txt
  * x_test: the test data set with each row as a record, read from X_test.txt
  * y_test: activity of each record of the test data set read from y_test.txt
  * merged_ds: the merged data set by combining the training data set and test data set
  * selected: feature names (or column names) of mean and standard deviation measurements only
  * selected_ds: the reduced data set containing only mean and standard deviation measurements
  * tidy_ds: the target data set with the average of each variable for each activity and each subject


Transformations
---------------

The following transformations are done after the raw data are read from the files:

  1. Add subjects, activities, and column labels (features names + subject + activity) into the training data set
  1. Add subjects, activities, and column labels (features names + subject + activity) into the test data set
  1. Combine the training data set and the test data set into a merged data set
  1. Find out all mean and standard deviation features and retrieve the corresponding data + subjects and activities from the merged data set and form a selected data set
  1. Create the tidy data set from the selecte data set with average of each variable for each activity and each subject
  1. Write the tidy data set to a file


Output Data Set
---------------

The output data set (or tidy data set) contains all of the mean and stardard deviation measurements together with the corresponding subjects and activities. The activities are represented by their labels instead of IDs.
