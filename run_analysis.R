des.Variable <- function(p, r, x, ...) {
        for (i in 1:length(p)) {
                x <- gsub(p[i], r[i], x, ...)
        }
        x
}
run_analysis <- function(){
        #download the Data
        fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        if (!file.exists("./dataset.zip")) {
                download.file(fileUrl, destfile = "./dataset.zip")
        }
        #unzip the Data
        rawfile <- unzip("./dataset.zip")
        
        #getting Test Data
        subject_test <- read.table(rawfile[14])
        X_test <- read.table(rawfile[15])
        y_test <- read.table(rawfile[16])
        
        #merging 3 files of test Data
        test <- cbind(y_test, subject_test, X_test)
        
        #getting train Data
        subject_train <- read.table(rawfile[26])
        X_train <- read.table(rawfile[27])
        y_train <- read.table(rawfile[28])
        
        #merging 3 files of train Data
        train <- cbind(y_train, subject_train, X_train)
        
        #combining test and train Data
        mData <- rbind(train,test)
        
        #reading features and activity labels
        feature <- read.table(rawfile[2],stringsAsFactors = FALSE)[,2]
        activity_label <- read.table(rawfile[1],stringsAsFactors = FALSE)
        
        #giving columns a name
        colnames(mData) <- c("activity", "subject", feature)
        
        #filtering column by mean and std only
        mData <- mData[, grep("subject|activity|-mean\\(|-std\\(", colnames(mData))]
        
        #replacing activity labels
        mData$activity <- factor(mData$activity, levels = 1:6, labels = activity_label$V2)
        
        #descriptive varibale name
        colnames(mData) <- des.Variable(c("-mean\\(\\)", "-std\\(\\)"), c("Mean", "StdDev"), colnames(mData))
        
        #average of each variable for each activity and each subject
        tmp <- melt(mData, id.vars = c("subject", "activity"))
        mData <- dcast(tmp, subject + activity ~ variable, mean)
        
        #writing the data in a text file
        write.table(mData, "tidydata.txt", row.names = FALSE)
}