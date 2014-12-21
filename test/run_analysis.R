#### Getting and collecting Data Course Project

library(plyr)
library(reshape2)
## Check our working directory and then make it the folder with the downloaded data
# getwd()
# setwd("C:/Users/richard alessi/Desktop/Courses/3. Getting and Collecting Data/Course_Project/UCI HAR Dataset")

#################### PART 1 ##################################################################################


## Firstly import the labels and features
labels <- read.table("./activity_labels.txt")
names(labels) <- c("Code", "Activity")

features <- read.table("./features.txt", stringsAsFactors = FALSE)
features$V2 <- gsub("\\({1}\\){1}\\-{1}", "", features$V2)

# Then Import the train data sets
train_x <- read.table("./train/X_train.txt")
names(train_x) <- features$V2
train_y <- read.table("./train/Y_train.txt")
train_subject <- read.table("./train/subject_train.txt")
#Combine the train datasets together
Train <- cbind(train_x, train_y, train_subject)

#Then we import the test data sets
test_x <- read.table("./test/X_test.txt")
names(test_x) <- features$V2
test_y <- read.table("./test/Y_test.txt")
test_subject <- read.table("./test/subject_test.txt")
#And combine the test datastes together
Test <- cbind(test_x, test_y, test_subject)

#Lastly we combine the train and test data sets together to get the full data set

ALLDATA <- rbind(Train, Test)

names(ALLDATA)[562] <- "Activity_Code"
names(ALLDATA)[563] <- "Subject"

#################### PART 2 ##################################################################################
# We are only interested in the mean and standard deviation

#Find matches in the features dataset for "mean" and "std" for mean and standard deviation respectively

Cols_with_mean_or_std <- grep("-mean|std", features$V2)

Reduced_data <- ALLDATA[c(Cols_with_mean_or_std, 562, 563)]

#################### PART 3 ##################################################################################

#Merge the activity names into the dataset

FINALDATA = merge(Reduced_data, labels, by.x = "Activity_Code", by.y = "Code", all = TRUE )




#################### PART 4 ##################################################################################

#Variable names were added in in PART 1
# No further Anlysis required


#################### PART 5 ##################################################################################


SUMMARY_DATA <- aggregate(FINALDATA[1:80], by=list(FINALDATA$Subject, FINALDATA$Activity), FUN = "mean")
names(SUMMARY_DATA)[1:2] <- c("Subject", "Activity")
# Finally we can write our summary data set to file
write.table(SUMMARY_DATA, file = "./finaldata.txt", row.names = FALSE)



