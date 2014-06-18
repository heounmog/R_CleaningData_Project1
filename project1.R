# read raw data files
Train_data <- read.table("./train/X_train.txt", sep="\t", header=F, stringsAsFactors = F)
Train_labels <- read.table("./train/y_train.txt", sep="\t", header=F, stringsAsFactors = F)
Train_subjects <- read.table("./train/subject_train.txt", sep="\t", header=F, stringsAsFactors = F)

Test_data <- read.table("./test/X_test.txt", sep="\t", header=F, stringsAsFactors = F)
Test_labels <- read.table("./test/y_test.txt", sep="\t", header=F, stringsAsFactors = F)
Test_subjects <- read.table("./test/subject_test.txt", sep="\t", header=F, stringsAsFactors = F)

# Split each value in a line by separtor of " "
Train_data_table <- strsplit(Train_data[,1]," ")
Test_data_table <- strsplit(Test_data[,1]," ")

# Remove unnesessary " " in each line and convert into data frame
Train_data_table <- as.data.frame(matrix(as.numeric(unlist(Train_data_table)[!unlist(Train_data_table)%in%""]),nrow=7352,ncol=561,byrow=T))
Test_data_table <- as.data.frame(matrix(as.numeric(unlist(Test_data_table)[!unlist(Test_data_table)%in%""]),nrow=2947,ncol=561,byrow=T))

# Merge the train and test data
Merged_data_table <- rbind(Train_data_table,Test_data_table)

# Read the features file and add them in the data frame
Features <- read.table("./features.txt", sep="\t", header=F, stringsAsFactors = F)

# Select only variable names(Remove number index)
Features <- as.character(unlist(strsplit(Features[,1]," ")))
is.even <- function(x) x %% 2 == 0
names(Merged_data_table) <- Features[is.even(1:1122)]

# Select only mean() and std() variables and make another data table for them
Merged_MeanStd_table <- cbind(Merged_data_table[,grep("mean()", names(Merged_data_table))],Merged_data_table[,grep("std()", names(Merged_data_table))])

# Add labels and subjects column into the MeanStd data frames
Merged_MeanStd_table$label <- c(Train_labels[ ,1],Test_labels[ ,1])
Merged_MeanStd_table$subject <- c(Train_subjects[ ,1],Test_subjects[ ,1])

# Add descriptive activity name variable
Merged_MeanStd_table$ActivityName <- ifelse(Merged_MeanStd_table$label==1, "WALKING", ifelse(Merged_MeanStd_table$label==2,"WALKING_UPSTAIRS",ifelse(Merged_MeanStd_table$label==3,"WALKING_DOWNSTAIRS",ifelse(Merged_MeanStd_table$label==4,"SITTING",ifelse(Merged_MeanStd_table$label==5,"STANDING","LAYING")))))

# Get average value of each value by activities and subjects
tidy_data <- aggregate(Merged_MeanStd_table[,1:79],list(Merged_MeanStd_table$ActivityName, Merged_MeanStd_table$subject),mean)

# Modify some variable names including typo in original data files
names(tidy_data)[1] <- "Activity"
names(tidy_data)[2] <- "Subject ID"
names(tidy_data)[79] <- "fBodyAccJerkMag-std()Subject ID"
names(tidy_data)[80] <- "fBodyGyroMag-std()Subject ID"
names(tidy_data)[81] <- "fBodyGyroJerkMag-std()"

# Export the tidy data to a file.
write.csv(tidy_data[order(tidy_data[,1],tidy_data[,2]), ], "tidy_data.csv", row.names=FALSE)