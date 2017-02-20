activity_labels <- read.table( "UCI HAR Dataset/activity_labels.txt", sep = "" )
features <- read.table( "UCI HAR Dataset/features.txt", sep = "" )
x_test <- read.table( "UCI HAR Dataset/test/X_test.txt", sep = "" )
y_test <- read.table( "UCI HAR Dataset/test/y_test.txt", sep = "" )
subject_test <- read.table( "UCI HAR Dataset/test/subject_test.txt", sep = "" )
x_train <- read.table( "UCI HAR Dataset/train/X_train.txt", sep = "" )
y_train <- read.table( "UCI HAR Dataset/train/y_train.txt", sep = "" )
subject_train <- read.table( "UCI HAR Dataset/train/subject_train.txt", sep = "" )

keepers = c(1:6, 41:46, 81:86, 121:126, 161:166, 201,202, 214,215, 227,228, 240, 241, 253, 254, 266:271, 345:350, 424:429, 503,504,516,517, 529,530,542, 543)
names(x_test) <- features$V2
names(x_train) <- features$V2

names(x_test) <- gsub( "\\(", "", names(x_test) )
names(x_test) <- gsub( "\\)", "", names(x_test) )
names(x_test) <- gsub( "\\.", "_", names(x_test) )


names(x_train) <- gsub( "\\(", "", names(x_train) )
names(x_train) <- gsub( "\\)", "", names(x_train) )
names(x_train) <- gsub( "\\.", "_", names(x_train) )

names(subject_test) <- c("subjectid")
names(subject_train) <- c("subjectid")
names(y_test) <- c("activity")
y_test$activity <- tolower(activity_labels$V2[y_test$activity])
names(y_train) <- c("activity")
y_train$activity <- tolower(activity_labels$V2[y_train$activity])



x_test_keepers  <- x_test[,keepers]
x_train_keepers <- x_train[,keepers]

test_column <- data.frame( type=rep("test", nrow(x_test_keepers)))
train_column <- data.frame( type=rep("train", nrow(x_train_keepers)) )

test_data <- cbind( test_column, subject_test, y_test, x_test_keepers )
train_data <- cbind( train_column, subject_train, y_train, x_train_keepers )

uberset <- rbind( test_data, train_data )

## Cleanup
rm(keepers)
rm(activity_labels)
rm(features)
rm(subject_test)
rm(subject_train)
rm(test_column)
rm(test_data)
rm(train_column)
rm(train_data)
rm(x_test)
rm(x_test_keepers)
rm(x_train)
rm(x_train_keepers)
rm(y_test)
rm(y_train)
