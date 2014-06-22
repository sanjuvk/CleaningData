# The 'UCI HAR Dataset' folder has been copied to the data folder in the working directoy. 

# Read the test data
test_sub <- read.table ("./data/UCI HAR Dataset/test/subject_test.txt", header = FALSE, colClasses = "numeric")
test_act <- read.table ("./data/UCI HAR Dataset/test/y_test.txt", header = FALSE, colClasses = "numeric")
test_data <- read.table("./data/UCI HAR Dataset/test/X_test.txt", header = FALSE, colClasses = "numeric")

# Read the train data 
train_sub <- read.table ("./data/UCI HAR Dataset/train/subject_train.txt", header = FALSE, colClasses = "numeric")
train_act <- read.table ("./data/UCI HAR Dataset/train/y_train.txt", header = FALSE, colClasses = "numeric")
train_data <- read.table ("./data/UCI HAR Dataset/train/X_train.txt", header = FALSE, colClasses = "numeric")

# Read the feature and activity list data 
feat_list <- read.table("./data/UCI HAR Dataset/features.txt", header = FALSE, colClasses = "character")
act_label <- read.table("./data/UCI HAR Dataset/activity_labels.txt", header = FALSE, colClasses = c("numeric", "character")

# Combine the test and train subject id to one data frame
subject_ref <- rbind(test_sub, train_sub)
colnames(subject_ref) <- "Subject_ID"

# Combine the test and train activity list to one data frame
activity <- rbind(test_act, train_act)
colnames(activity) <- "Activity_Name"

# Combine the test and train feature data to one data frame
data <- rbind(test_data, train_data)

# Provide explanaory variable names for each feature data columns
colnames(data) <- feat_list[,2]

# Combine the subject id, activity name and feature data to one single data frame
data_set <- cbind(subject_ref, activity, data)

# Map the activity number to the corresponding activity name
data_set[,"Activity_Name"] <- mapvalues(data_set[,"Activity_Name"], act_label[,1], act_label[,2])

# Extract only the 'mean()' and 'std()' columns 
sub_set <- sort(c (1,2, grep("mean()", colnames(data_set)), grep("std()", colnames(data_set))))
final_data <- data_set[,sub_set]

# Melt the final data frame for subject id and activity name.
sub_set1 <- colnames(final_data)[3:ncol(final_data)]
meltData <- melt(final_data, id = c("Subject_ID", "Activity_Name"), measure.vars = sub_set1)

# dcast the melt data to find the mean for the variables per subject id & activity name
dcastData <- dcast(meltData, Subject_ID + Activity_Name ~ variable, mean)
colnames(dcastData)[c(3:ncol(dcastData))] <- paste("Avg", colnames(dcastData)[c(3:ncol(dcastData))], sep='_')

# Write the final data to tidyData.txt file
write.table(dcastData, "./data/tidyData.txt", col.names = TRUE, sep = " ")

