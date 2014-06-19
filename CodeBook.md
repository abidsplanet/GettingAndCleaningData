# Getting and Cleaning Data

## Main Dataset
        One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
        
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
        
        Here are the data for the project: 
        
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Resultant Dataset

### I have created a tidy data set with 68 variables and 180 rows from 30 subjects over the 6 activities:

        1. subject
                Subject is an numeric identifier that identifies the subject
        2. activity
                activity can be 6 types: WALKING, WALKING_UPSTAIRS, WALKING_DOWNST
                AIRs, SITTING, STANDING or LAYING
        3. ~ 68.
                "tBodyAccMean-X"             "tBodyAccMean-Y"            
                "tBodyAccMean-Z"             "tBodyAccStdDev-X"          
                "tBodyAccStdDev-Y"           "tBodyAccStdDev-Z"          
                "tGravityAccMean-X"          "tGravityAccMean-Y"         
                "tGravityAccMean-Z"          "tGravityAccStdDev-X"       
                "tGravityAccStdDev-Y"        "tGravityAccStdDev-Z"       
                "tBodyAccJerkMean-X"         "tBodyAccJerkMean-Y"        
                "tBodyAccJerkMean-Z"         "tBodyAccJerkStdDev-X"      
                "tBodyAccJerkStdDev-Y"       "tBodyAccJerkStdDev-Z"      
                "tBodyGyroMean-X"            "tBodyGyroMean-Y"           
                "tBodyGyroMean-Z"            "tBodyGyroStdDev-X"         
                "tBodyGyroStdDev-Y"          "tBodyGyroStdDev-Z"         
                "tBodyGyroJerkMean-X"        "tBodyGyroJerkMean-Y"       
                "tBodyGyroJerkMean-Z"        "tBodyGyroJerkStdDev-X"     
                "tBodyGyroJerkStdDev-Y"      "tBodyGyroJerkStdDev-Z"     
                "tBodyAccMagMean"            "tBodyAccMagStdDev"         
                "tGravityAccMagMean"         "tGravityAccMagStdDev"      
                "tBodyAccJerkMagMean"        "tBodyAccJerkMagStdDev"     
                "tBodyGyroMagMean"           "tBodyGyroMagStdDev"        
                "tBodyGyroJerkMagMean"       "tBodyGyroJerkMagStdDev"    
                "fBodyAccMean-X"             "fBodyAccMean-Y"            
                "fBodyAccMean-Z"             "fBodyAccStdDev-X"          
                "fBodyAccStdDev-Y"           "fBodyAccStdDev-Z"          
                "fBodyAccJerkMean-X"         "fBodyAccJerkMean-Y"        
                "fBodyAccJerkMean-Z"         "fBodyAccJerkStdDev-X"      
                "fBodyAccJerkStdDev-Y"       "fBodyAccJerkStdDev-Z"      
                "fBodyGyroMean-X"            "fBodyGyroMean-Y"           
                "fBodyGyroMean-Z"            "fBodyGyroStdDev-X"         
                "fBodyGyroStdDev-Y"          "fBodyGyroStdDev-Z"         
                "fBodyAccMagMean"            "fBodyAccMagStdDev"         
                "fBodyBodyAccJerkMagMean"    "fBodyBodyAccJerkMagStdDev" 
                "fBodyBodyGyroMagMean"       "fBodyBodyGyroMagStdDev"    
                "fBodyBodyGyroJerkMagMean"   "fBodyBodyGyroJerkMagStdDev"
                
                if the variable is started with a 't', then the variable is a time 
                domain signal captured at a constant rate of 50 hz.
                
                if the variable is started with a 'f', then it represents 
                frequency
                
        # The resultant dataset only contains Mean and Standard Deviation for the 
        measurements.



