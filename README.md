## Explanation of run_analysis.R script

###The run_analysis.R script performs data analysis on the test and train data and creates a tidy data set. 

###Using read.table read the test, train, activity and feature data into R. The test and train data consist of Subject ID, Activity Name and the 561 feature variable data. 

###Using rbind function combined the (a)test Subject ID & train Subject ID, (b)test Activity Name & train Activity Name and the (c)test feature data & train feature data into three data frames. Then using cbind function combined these three data frames into one data frame. 

###Assigned explanatory variable names for each columns using colnames function, 

###Using mapvalues function in plyr package, mapped the Activity Numbers to the explanatory Activity Names. 

###Out of the 561 features, extracted the mean and standard deviation features. This was done by performing a grep of 'mean()' and 'std()' on the column names and subsetting those selected columns.

###Using melt and dcast functions in reshape2 package, calculated the average of the variables per Subject ID  and Activity Name combinations. 

###Using write.table function write the dcast data to the text file names tidyData.txt

