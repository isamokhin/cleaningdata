### Cleaning data: repository for Coursera course

Contains R script for making tidy dataset with averages of variables for each activity and each subject in Samsung dataset.

Requires that Samsung dataset (directory UCI HAR Dataset) is present in the same directory as the script.

Script "run_analysis.R" takes distinct datasets from "directory UCI HAR Dataset", 
creates a new combined dataset with only averages and standard deviations extracted,
and aggregates the data from it into new tidy dataset, written into "tidy.txt".

The first stage is reading and merging the data itself ("X_test" and "X_train"). They are merged throught row binding. Thus we get "united" dataset.

Next, script gets numbers of subjects who were taking part in the experiment. These are also two datasets, merged by rbind().

The same operation is performed on activity numbers from files "y_test" and "y_train".

Activity numbers must be replaced by descriptive names. Here, function sub() is used.

Then script gets variable names for the initial "united" dataset from "features.txt". These names are substituted into the dataset through colnames().

To extract only averages and standard deviations form "united" set, script uses function grepl() and creates two intermediate datasets for the goal. The variables with "meanFreq" in the name were deliberately **excluded**. Only "usual" means, no frequency means, were counted.

By this time, script makes only one dataset "united" through cbind(). The variables "activity" and "subject" are added.

Finally, the reduced "united" dataset is made into "tidy" through function aggregate(), which uses function mean() on variables, grouped according to "activity" and "subject".

Only now script renames abbreviated variable names. "t" and "f" were changed to "time" and "frequency", "Acc", "Gyro" and "Mag" - to "acceleration", "gyroscope" and "magnitude". All letters were converted into lowercase by function tolower().

In the end, resulting dataset is written into "tidy.txt" file.

What we get is 68-column, 180-row dataset with averages of all "mean" and "standard deviation" measurements from the united (train+test) version of initial dataset, grouped by both subject and activity. Variable names were made all lowercase and not abbreviated. Activity numbers were changed to activity names. Resulting dataset is more readable and more clean, than initial dataset.

Hope that works.