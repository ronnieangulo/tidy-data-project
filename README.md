# tidy-data-project
Getting and Cleaning Data Course Project
This repo was created to finish the final assignment of Getting and Cleaning data course.

Description of data: The data used in this project represent data collected from the accelerometers from the Samsung Galaxy S smartphone.

Code: The code implemented combines data extracted from the train and test datasets and creates a new dataset with the average of each variable for each activity and each subject.

The code was written based on the instructions provided for this assignment:
1. Merge the training and the test sets to create one data set. Use command rbind to combine training and test set
2. Extract only the measurements on the mean and standard deviation for each measurement. Use grep command to get column indexes for variable name contains "mean()" or "std()"
3. Use descriptive activity names to name the activities in the data set Convert activity labels to characters and add a new column as factor
4. Appropriately label the data set with descriptive variable names. Give the selected descriptive names to variable columns
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. Use pipeline command to create a new tidy dataset with command group_by and summarize_each in dplyr package
