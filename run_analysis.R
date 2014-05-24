# Igor Samokhin, for Coursera course "Getting and Cleaning Data"
# Script for making a new tidy data set with means and standard deviations
# from two big data sets, taken from UCI HAR Dataset
# Data is from here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# Script file must be in the same directory as extracted contents of the zip-file

# first, read both data sets - test set and training set
test <- read.table("UCI HAR Dataset/test/X_test.txt")
training <- read.table("UCI HAR Dataset/train/X_train.txt")

# second, merge two data sets by row binding
united <- rbind(test,training)

# third, get subject numbers and merge them
subjtest <- read.table("UCI HAR Dataset/test/subject_test.txt")
subjtrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
subjunited <- rbind(subjtest,subjtrain)
colnames(subjunited) <- c("subject")

# fourth, get activity names and merge them
testlabs <- read.table("UCI HAR Dataset/test/y_test.txt")
trainlabs <- read.table("UCI HAR Dataset/train/y_train.txt")
actlabs <- rbind(testlabs,trainlabs)
colnames(actlabs) <- c("activity")

# fifth, we can right now change activity numbers into names
actlabs[,1] <- sub("1","walking",actlabs[,1])
actlabs[,1] <- sub("2","walkingupstairs",actlabs[,1])
actlabs[,1] <- sub("3","walkingdowstairs",actlabs[,1])
actlabs[,1] <- sub("4","sitting",actlabs[,1])
actlabs[,1] <- sub("5","standing",actlabs[,1])
actlabs[,1] <- sub("6","laying",actlabs[,1])

# sixth, get variable names for 'united' set
cols <- read.table("UCI HAR Dataset/features.txt")
colnames(united) <- cols[,"V2"]

# seventh, extract only variables with mean and std values
meanunited <- united[grepl("mean", names(united))]
stdunited <- united[grepl("std", names(united))]
newunited <- cbind(meanunited,stdunited)

# I decided to EXCLUDE meanFreq values, leaving only mean and std
newunited <- newunited[!grepl("meanFreq", names(newunited))]

# eighth, merge this reduced set with subject and activities sets
newunited <- cbind(newunited,subjunited,actlabs)

# let's return to old name for the set
united <- newunited

# ninth, group values by both activities and subjects
# thus we get 180 rows (30 subjects, 6 activities) with averages
tidy <- aggregate(united[,1:66], mean, by=list(united$activity, united$subject))

# tenth, work with variable names to make them better-looking
# I used advice from lecture 4: no uppercase, no abbreviations, no underscores
names(tidy) <- sub("^t", "time", names(tidy))
names(tidy) <- sub("^f", "frequency", names(tidy))
names(tidy) <- sub("Gyro", "gyroscope", names(tidy))
names(tidy) <- sub("Acc", "acceleration", names(tidy))
names(tidy) <- sub("Mag", "magnitude", names(tidy))
names(tidy) <- tolower(names(tidy))

# of course, names for group columns
colnames(tidy)[1] <- "activity"
colnames(tidy)[2] <- "subject"

# write the tidy dataset into file
write.table(tidy, "tidy.txt")
