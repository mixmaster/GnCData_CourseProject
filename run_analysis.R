## Read each dataset from the files
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE)
names(activity_labels) <- c("ActivityCode", "Activity")

features <- read.table("UCI HAR Dataset/features.txt", header = FALSE)

subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
x_train <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE)

subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
x_test <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE)

## Training data set
names(x_train) <- features$V2
x_train$Subject <- subject_train$V1
x_train$ActivityCode <- y_train$V1

## Test data set
names(x_test) <- features$V2
x_test$Subject <- subject_test$V1
x_test$ActivityCode <- y_test$V1

## Merge the training and test datasets
merged_ds <- rbind(x_train, x_test)

## Extract needed data
selected <- grep("mean\\(\\)|std\\(\\)", features$V2, value = TRUE)
selected_ds <- merged_ds[, c("Subject", "ActivityCode", selected)]
selected_ds <- merge(selected_ds, activity_labels,
                     by.x = "ActivityCode", by.y = "ActivityCode", all = TRUE)
selected_ds <- selected_ds[, c("Subject", "Activity", selected)]

## Create tidy data set
library(plyr)
tidy_ds <- ddply(selected_ds, c("Subject", "Activity"), function(x) colMeans(x[selected]))

## Write the tidy data set to a file
write.table(tidy_ds, "tidy_data_set.txt", row.names = FALSE)
