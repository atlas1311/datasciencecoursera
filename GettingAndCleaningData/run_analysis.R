## appropriately set working directory for the required files
setwd("~/datasciencecoursera/GettingAndCleaningData/CleaningDataProject")

## read in the activity labels
labels <- read.table("activity_labels.txt", sep = " ", col.names = c("activity", "label"), stringsAsFactors = FALSE)

## read in the features file, which contains the names of the variables
features <- read.table("features.txt", sep = "", col.names = c("feature", "description"), 
                       stringsAsFactors = FALSE, colClasses = "character")
                       
## build a vector that denotes the variables containing mean and sd data                       
meansd <- c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 227:228, 240:241, 
            253:254, 266:271, 345:350, 424:429, 503:504, 516:517, 529:530, 542:543)
            
## build a data table that subsets the mean and sd variable names            
featureDat <- data.table(features[meansd, ])

## read in the subject IDs for test
subjectTest <- read.table("subject_test.txt", sep = "", col.names = "subject")

## add a group variable to the file marking it for test
subjectTest$group <- apply(subjectTest, 1, function(row) 1)

## read in the subject IDs for train
subjectTrain <- read.table("subject_train.txt", sep = "", col.names = "subject")

##add a group variable for the file makring it for train
subjectTrain$group <- apply(subjectTrain, 1, function(row) 2)

## read in the x test data
xTest <- read.table("X_test.txt", sep = "", col.names = features$description)

## read in the x train data
xTrain <- read.table("X_train.txt", sep = "", col.names = features$description)

## read in the y test data
yTest <- read.table("Y_test.txt", sep = "", col.names = "activity")

## read in the y train data
yTrain <- read.table("Y_train.txt", sep = "", col.names = "activity")

## bind the rows of test and train together, subsetting on only the variables we need for the analysis
data <- rbind(xTest[meansd], xTrain[meansd])

## bind the rows of y test and train, the files that denots which activity produced the data
activityID <- rbind(yTest, yTrain)

## bind the rows of subject IDs together
subjectID <- rbind(subjectTest, subjectTrain)

## bind all 3 new dataframes together into one
work <- cbind(subjectID, activityID, data)

## merge this new dataframe with the labels, showing the names of the activity
analysis <- merge(labels, work, by.x = "activity", by.y = "activity", all = TRUE)

## melt the analysis dataframe together based on the subject and label variables.
## this allows us to then re-caste it in the next step
form <- melt(analysis, id = c("subject", "label"))

## cast the new, melted dataframe on subject and label, displaying the means for each variable by subject and label
motion <- dcast(form, subject + label ~ variable, mean)
