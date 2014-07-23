README
======

Files/Scripts
-------------

This repository contains:

  * README.md: this file
  * run_analysis.R: the R script to create target data set file
  * CodeBook.md: the code book that describes the variables, data, and any transformations or work done in the above script


Requirements to Run the Script
------------------------------

To run the script, you would need to:

  * Set this directory as the working directory
  * Unzip the "UCI HAR Data.zip" into the working directory and keep the original directory structure unchanged


Output
------

After the script is successfully run, a file named "tidy_data_set.txt" will be generated. It contains all of the mean and stardard deviation measurements together with the corresponding subjects and activities. The activities are represented by their labels instead of IDs.


Internals
---------

Internally the script does the following:

  1. Add subjects, activities, and column labels (features names + subject + activity) into the training data set
  1. Add subjects, activities, and column labels (features names + subject + activity) into the test data set
  1. Combine the training data set and the test data set into a merged data set
  1. Find out all mean and standard deviation features and retrieve the corresponding data + subjects and activities from the merged data set and form a selected data set
  1. Create the tidy data set from the selecte data set with average of each variable for each activity and each subject
  1. Write the tidy data set to a file
