##read in datafiles  
a <- read.table("subject_test.txt", sep = "")
b <- read.table("X_test.txt", sep = "")
c <- read.table("y_test.txt", sep = "")
d <- read.table("subject_train.txt", sep = "")
e <- read.table("X_train.txt", sep = "")
f <- read.table("y_train.txt", sep = "")
names <- read.table("activity_labels.txt", sep = "")
##change headers of activity file
colnames(names) <- c("activity", "activityname")
head <- read.table("features.txt", sep="")
head <- subset(head, select = -V1)
headvec <- head[["V2"]]
##combine x files; y files; and subject files and add column headers as necessary
g <- rbind(b,e)
h <- rbind(c,f)
i <- rbind(a,d)
names(i) <- "Subject"
names(g) <- headvec
##combine these files to create big dataset
final <- cbind(g,h,i)
names(final)[names(final) == "V1"] <- "Number"
##create smaller dataset with just the mean and standard deviation variables
final2 <- final[,grep("mean", names(final))]
final3 <- final[,grep("std", names(final))]
final4 <- cbind(final2,final3)
final6 <- cbind(final4, final$Number, final$Subject)
names(final6)[names(final6) %in% c("final$Number","final$Subject")] <- c("Activity","Subject")
##clean up names by removing parentheses and dashes, making all letters lowercase, and elongating variables to their full names
final7 <- final6[,!grepl("meanFreq", names(final6))]
names(final7) <- gsub("()","",names(final7), fixed=TRUE)
names(final7) <- gsub("-", "", names(final7))
names(final7) <- tolower(names(final7))
names(final7) <- gsub("fbody","frequencybody", names(final7))
names(final7) <- gsub("tbody","timebody", names(final7))
names(final7) <- gsub("meanx", "meanxdirection", names(final7))
names(final7) <- gsub("meany", "meanydirection", names(final7))
names(final7) <- gsub("meanz", "meanzdirection", names(final7))
names(final7) <- gsub("stdx", "stdxdirection", names(final7))
names(final7) <- gsub("stdy", "stdydirection", names(final7))
names(final7) <- gsub("stdz", "stdzdirection", names(final7))
names(final7) <- gsub("std", "standarddeviation", names(final7))
names(final7) <- gsub("acc", "accelerometer", names(final7))
names(final7) <- gsub("gyro", "gyroscope", names(final7))
names(final7) <- gsub("tgrav", "timegravity", names(final7))
names(final7) <- gsub("mag", "magnitude", names(final7))
##create final tidy dataset showing the average means and standard deviations for each particpant-activity combination
install.packages("reshape2")
library(reshape2)
as.numeric(final7$subject)
as.numeric(final7$activity)
fmelt <- melt(final7, id.vars = c("activity", "subject"))
final9 <- dcast(fmelt, subject + activity ~ variable, fun.aggregate=mean)
##add in activity labels corresponding with the activity number
final10 <- merge(names,final9,by="activity")
write.csv(final10, file='finaldata.txt')