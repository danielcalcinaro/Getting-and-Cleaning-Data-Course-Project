
tiding

{

  library(dplyr)
  
  

test1<-read.table("test/X_test.txt")
train1<-read.table("train/X_train.txt")
features<-read.table("features.txt")
stest1<-read.table("test/subject_test.txt")
strain1<-read.table("train/subject_train.txt")
ytest1<-read.table("test/y_test.txt")
ytrain1<-read.table("train/y_train.txt")
activity<-read.table("activity_labels.txt")

names(test1)<-features[,2]
names(train1)<-features[,2]
names(stest1)<-"Subject"
names(strain1)<-"Subject"
names(ytest1)<-"Activity"
names(ytrain1)<-"Activity"


train2<-data.frame(train1,strain1,ytrain1)
test2<-data.frame(test1,stest1,ytest1)

traintest<-merge(train2,test2,all=TRUE)

traintest2<-select(traintest,c(1:6,41:46,81:86,562:563))

traintest3<-mutate(traintest2,Activity=activity[Activity,2])

grouped_traintest<-group_by(traintest3,Subject,Activity)


grouped_summary<-summarize(grouped_traintest,tBodyAcc.mean...X=mean(tBodyAcc.mean...X,na.rm=TRUE),tBodyAcc.mean...Y=mean(tBodyAcc.mean...Y,na.rm=TRUE),tBodyAcc.mean...Z=mean(tBodyAcc.mean...Z, na.rm=TRUE), tBodyAcc.std...X=mean(tBodyAcc.std...X,na.rm=TRUE),tBodyAcc.std...Y=mean(tBodyAcc.std...Y,na.rm=TRUE),tBodyAcc.std...Z=mean(tBodyAcc.std...Z,na.rm=TRUE), tGravityAcc.mean...X=mean(tGravityAcc.mean...X,na.rm=TRUE),tGravityAcc.mean...Y=mean(tGravityAcc.mean...Y,na.rm=TRUE),tGravityAcc.mean...Z=mean(tGravityAcc.mean...Z, na.rm=TRUE), tGravityAcc.std...X=mean(tGravityAcc.std...X,na.rm=TRUE),tGravityAcc.std...Y=mean(tGravityAcc.std...Y,na.rm=TRUE),tGravityAcc.std...Z=mean(tGravityAcc.std...Z,na.rm=TRUE), tBodyAccJerk.mean...X=mean(tBodyAccJerk.mean...X,na.rm=TRUE),tBodyAccJerk.mean...Y=mean(tBodyAccJerk.mean...Y,na.rm=TRUE),tBodyAccJerk.mean...Z=mean(tBodyAccJerk.mean...Z, na.rm=TRUE), tBodyAccJerk.std...X=mean(tBodyAccJerk.std...X,na.rm=TRUE),tBodyAccJerk.std...Y=mean(tBodyAccJerk.std...Y,na.rm=TRUE),tBodyAccJerk.std...Z=mean(tBodyAccJerk.std...Z,na.rm=TRUE))


}

grouped_summary

