##Load packages needed
library(dplyr)

##If not present, then download data
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if (!file.exists("UCI.zip")) {
    download.file(fileUrl,destfile = "UCI.zip")
    unzip("UCI.zip", exdir="./data")
}

## Read all data
## Features and activity labels data
dfFeatures <- read.table("data/UCI HAR Dataset/features.txt")
dfActivity <- read.table("data/UCI HAR Dataset/activity_labels.txt")


## Test data
dfTest_x <- read.table("data/UCI HAR Dataset/test/X_test.txt")
dfTest_y <- read.table("data/UCI HAR Dataset/test/y_test.txt")
dfTest_sub <- read.table("data/UCI HAR Dataset/test/subject_test.txt")

## Train data
dfTrain_x <- read.table("data/UCI HAR Dataset/train/X_train.txt")
dfTrain_y <- read.table("data/UCI HAR Dataset/train/y_train.txt")
dfTrain_sub <- read.table("data/UCI HAR Dataset/train/subject_train.txt")

## First objective: Merge the training and the test sets to create one data set. 

dfTrain <- cbind(dfTrain_sub, dfTrain_y, dfTrain_x)
dfTest <- cbind(dfTest_sub, dfTest_y, dfTest_x)
dfAll <- rbind(dfTrain, dfTest)

## Rename first and second columns with appropriate labels
names(dfAll)[1] <- "subject"
names(dfAll)[2] <- "activitytype"
## Rename columns 3 to 563 with labels from features
for (i in 3:563) {names(dfAll)[i] <- dfFeatures[i-2,2]}

## Rename columns in activity labels
colnames(dfActivity) <- c('activitycode','activitytype')

## Second objective: Extract only the measurements on the mean and standard deviation for each measurement

## Read all the column names in the complete dataset
colcomplete <- colnames(dfAll)
## Get a subset of all the mean and standard devs,  and subject and activityid 
dfMeanSd <- (grepl("activitytype" , colcomplete) | grepl("subject" , colcomplete) | grepl("mean.." , colcomplete) | grepl("std.." , colcomplete))
##A subtset has to be created to get the required dataset
dfMeanSd <- dfAll[ , dfMeanSd == TRUE]

## Third objective: Use descriptive activity names to name the activities in the data set
## dfMeanSd <- merge(dfMeanSd, dfActivity, by="activitytype", all.x=TRUE)

dfMeanSd$activitytype <- apply(subset(dfMeanSd, select = activitytype),2,function(x) 
                         {x <- recode(x, "1"="WALKING", "2"="WALKING_UPSTAIRS", 
                          "3"="WALKING_DOWNSTAIRS", "4"="SITTING", 
                          "5"="STANDING", "6"="LAYING")})

print(head(dfMeanSd,1))

## Fourth objective: Appropriately label the data set with descriptive variable names.
dfColumns <- colnames(dfMeanSd)

## Remove special characters
dfColumns <- gsub("[\\(\\)-]", "", dfColumns)

## Expand abbreviations
dfColumns <- gsub("^f", "frequencyDomain", dfColumns)
dfColumns <- gsub("^t", "timeDomain", dfColumns)
dfColumns <- gsub("Acc", "Accelerometer", dfColumns)
dfColumns <- gsub("Gyro", "Gyroscope", dfColumns)
dfColumns <- gsub("Mag", "Magnitude", dfColumns)
dfColumns <- gsub("Freq", "Frequency", dfColumns)
dfColumns <- gsub("mean", "Mean", dfColumns)
dfColumns <- gsub("std", "StandardDeviation", dfColumns)

## Correct duplicate description
dfColumns <- gsub("BodyBody", "Body", dfColumns)

## Replace column names
colnames(dfMeanSd) <- dfColumns

## Fifth objective: create a second, independent tidy data set with the average of each variable for each activity and each subject.
dfGroup <- dfMeanSd %>% 
           group_by(subject,activitytype) %>% 
           summarise_each(mean)

# Output to file "tidy_data.txt"
write.table(dfGroup, "tidy_data.txt", row.names = FALSE)
