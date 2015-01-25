run_analysis <- function() {
    
    rValue<-c(NA)
    
    ### Define DataSet directories ###
    dataset_dir <- "UCI HAR Dataset"
    train_dir <- paste(dataset_dir, "/train", sep="")
    test_dir <- paste(dataset_dir, "/test", sep="")
    
    ### DATA directory must exist and must contain corresponding files ###
    if (!file.exists(dataset_dir)) {
        print("DATA not found! Case study directory [UCI HAR Dataset] must be placed in the working directory.")
        rValue
        return
    } else {
        empty_dir_file_list <- list.files(paste("./", dataset_dir, sep=""))
        if (length(empty_dir_file_list) == 0) {
            print ("DATA not found! Case study directory [UCI HAR Dataset] contains no files.")
            rValue
            return
        }
    }
    
    ### Define DATA file names ###
    file_list <- c("activity_labels.txt", "features.txt", 
                   "subject_train.txt", "X_train.txt", "y_train.txt", 
                   "subject_test.txt", "X_test.txt", "y_test.txt")
    names(file_list) <- c("activ_lab", "feat", 
                          "sub_train", "x_train", "y_train", 
                          "sub_test", "x_test", "y_test")
    
    ### Read the DATA, check if the corresponding file exist ###
    main_dir_file_list <- list.files(paste("./", dataset_dir, sep=""), full.names=TRUE)
    activ_lab_file_id <- grep(file_list["activ_lab"], main_dir_file_list)
    if (is.na(main_dir_file_list[activ_lab_file_id])) {
        print("activity_labels.txt file not found. Terminating the script.")
        rValue
        return
    } else {    
        activ_lab <- read.table(main_dir_file_list[activ_lab_file_id], header=FALSE, stringsAsFactors=FALSE)
        names(activ_lab) <- c("ActivityID", "ActivityLabel")    
    }
    feat_file_id <- grep(file_list["feat"], main_dir_file_list)
    if (is.na(main_dir_file_list[feat_file_id])) {
        print("features.txt file not found. Terminating the script.")
        rValue
        return
    } else {    
        feat <- read.table(main_dir_file_list[feat_file_id], header=FALSE, stringsAsFactors=FALSE)
        names(feat) <- c("FeatureID", "FeatureLabel")    
    }
    
    train_dir_file_list <- list.files(paste("./", train_dir, sep=""), full.names=TRUE)
    sub_train_file_id<-grep(file_list["sub_train"], train_dir_file_list)
    if (is.na(train_dir_file_list[sub_train_file_id])) {
        print("subject_train.txt file not found. Terminating the script.")
        rValue
        return
    } else {    
        sub_train <- read.table(train_dir_file_list[sub_train_file_id], header=FALSE)
        names(sub_train) <- c("SubjectID")    
    }
    x_train_file_id <- grep(file_list["x_train"], train_dir_file_list)
    if (is.na(train_dir_file_list[x_train_file_id])) {
        print("X_train.txt file not found. Terminating the script.")
        rValue
        return
    } else {    
        x_train <- read.table(train_dir_file_list[x_train_file_id], header=FALSE)  
    }
    y_train_file_id<-grep(file_list["y_train"], train_dir_file_list)
    if (is.na(train_dir_file_list[y_train_file_id])) {
        print("y_train.txt file not found. Terminating the script.")
        rValue
        return
    } else {    
        y_train <- read.table(train_dir_file_list[y_train_file_id], header=FALSE)
        names(y_train)<-c("ActivityID")    
    }
    
    test_dir_file_list <- list.files(paste("./", test_dir, sep=""), full.names=TRUE)
    sub_test_file_id<-grep(file_list["sub_test"], test_dir_file_list)
    if (is.na(test_dir_file_list[sub_test_file_id])) {
        print("subject_test.txt file not found. Terminating the script.")
        rValue
        return
    } else {    
        sub_test <- read.table(test_dir_file_list[sub_test_file_id], header=FALSE)
        names(sub_test) <- c("SubjectID")    
    }
    x_test_file_id<-grep(file_list["x_test"], test_dir_file_list)
    if (is.na(test_dir_file_list[x_test_file_id])) {
        print("X_test.txt file not found. Terminating the script.")
        rValue
        return
    } else {    
        x_test <- read.table(test_dir_file_list[x_test_file_id], header=FALSE)   
    }
    y_test_file_id<-grep(file_list["y_test"], test_dir_file_list)
    if (is.na(test_dir_file_list[y_test_file_id])) {
        print("y_test.txt file not found. Terminating the script.")
        rValue
        return
    } else {    
        y_test <- read.table(test_dir_file_list[y_test_file_id], header=FALSE)
        names(y_test)<-c("ActivityID")    
    }
    
    ### 1) Merge DataSets ###
    total_train <- cbind(sub_train, y_train, x_train)
    total_test <- cbind(sub_test, y_test, x_test)
    
    total_dataset <- rbind(total_train, total_test)
    
    ### 2) Extract only the measurements on the mean and standard deviation ### 
    mean_ids <- grep("mean()", feat$FeatureLabel, fixed=TRUE)
    std_ids <- grep("std()", feat$FeatureLabel, fixed=TRUE)
    
    total_dataset <- total_dataset[, c(1, 2, mean_ids+2, std_ids+2)]
    
    ### 3) Use descriptive activity names to name the activities in the DataSet ###
    for (index in 1:length(activ_lab$ActivityLabel)) {
        total_dataset[total_dataset$ActivityID == activ_lab$ActivityID[index], "ActivityID"]<-activ_lab$ActivityLabel[index]
    }
    
    ### 4) Label the DataSet with descriptive variable names ###
    mean_names<-feat$FeatureLabel[mean_ids]
    mean_names<-gsub("-", "", mean_names)
    mean_names<-gsub("()", "", mean_names, fixed=TRUE)
    mean_names<-gsub("mean", "MeanValue", mean_names, fixed=TRUE)
    mean_names<-gsub("Mag", "Magnitude", mean_names, fixed=TRUE)
    mean_names<-gsub("BodyBody", "Body", mean_names, fixed=TRUE)
    
    std_names<-feat$FeatureLabel[std_ids]
    std_names<-gsub("-", "", std_names)
    std_names<-gsub("()", "", std_names, fixed=TRUE)
    std_names<-gsub("std", "Std", std_names, fixed=TRUE)
    std_names<-gsub("Mag", "Magnitude", std_names, fixed=TRUE)
    std_names<-gsub("Std", "StandardDeviation", std_names, fixed=TRUE)
    std_names<-gsub("BodyBody", "Body", std_names, fixed=TRUE)
    
    names(total_dataset) <- c("SubjectID","ActivityLabel", mean_names, std_names)
    
    ### 5) Tidy DataSet with the average of each variable for each activity and each subject ###
    library(reshape2)
    tidy_dataset<-melt(total_dataset, c("SubjectID", "ActivityLabel"))
    tidy_dataset<-dcast(tidy_dataset, SubjectID + ActivityLabel ~ variable, mean)
    tidy_dataset    
}