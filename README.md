README
======

This repository contains:

  * README.md: this file
  * run_analysis.R: the R script to create target data set file
  * CodeBook.md: the code book that describes the variables, data, and any transformations or work done in the above script

To run the script, you would need to:

  * Set this directory as the working directory
  * Unzip the "UCI HAR Data.zip" into the working directory and keep the original directory structure unchanged

After the script is successfully run, a file named "tidy_data_set.txt" will be generated. It contains all of the mean and stardard deviation measurements together with the corresponding subjects and activities. The activities are represented by their labels instead of IDs.
