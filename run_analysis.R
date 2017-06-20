
run_analysis<-function (){

####library required packages        
        library(reshape2)
        library(plyr)
        library(dplyr)
        
        
        
        
####load features.txt        accelerator variable labels
        features<-read.csv("./features.txt",header=FALSE,sep="")

####load activity_labels.txt
        actlabel<-read.csv("./activity_labels.txt",header=FALSE,sep=" ")
        colnames(actlabel)<-c("V1","activity")

##########LOAD TRAINING DATA #################################

####load /train/x_train.txt as fixed format file 
        ####accelerator variable values 
        cn<-features$V2  ##column names
        ww<-rep(16,561)  ##column widths
        data<-read.fwf("./train/x_train.txt",widths=ww,col.names=cn)

####load /train/subject_train.txt  IDs of volunteers in training set
        trnsubdata<-read.csv("./train/subject_train.txt",header=FALSE)
        colnames(trnsubdata)<-"subject"

####load /train/y_train.txt  keys for x_train records IDing associated activity
        trnydata<-read.csv("./train/y_train.txt",header=FALSE)
        colnames(trnydata)<-"activityno"

####add activity IDs and Subject IDs to x_train data
        data2<-cbind(trnydata,data)
        data3<-cbind(trnsubdata,data2)

####merge to add associated activity labels  ##3
        data4<-merge(data3,actlabel,by.x="activityno",by.y="V1")

#########LOAD TEST DATA#######################################
        
####load /test/x_test.txt as fixed format file         
        datatest<-read.fwf("./test/x_test.txt",widths=ww,col.names=cn)

####load /test/subject_test.txt  IDs of volunteers in test set
        tstsubdata<-read.csv("./test/subject_test.txt",header=FALSE)
        colnames(tstsubdata)<-"subject"

####load /test/y_test.txt  keys for x_test records IDing associated activity
        tstydata<-read.csv("./test/y_test.txt",header=FALSE)
        colnames(tstydata)<-"activityno"

####add activity IDs and Subject IDs to x_test data
        data2test<-cbind(tstydata,datatest)
        data3test<-cbind(tstsubdata,data2test)
        
####merge to add associated activity labels  ##3     
        data4test<-merge(data3test,actlabel,by.x="activityno",by.y="V1")

##1.  MERGE THE TRAINING AND TEST SETS INTO ONE DATA SET#####################
        alldata<-rbind(data4,data4test)
##2.  EXTRACT ONLY MEAN AND STD FOR EACH MEASUREMENT#####################
        data6<-select(alldata,2,564,contains("mean"),contains("std"),
                -contains("angle"),-contains("meanFreq"))
        
##4.   DESCRIPTIVE VARIABLE NAMES ############################        
        cntofix<-colnames(data6)
        cntofix1<-gsub("\\.","",cntofix)  ##eliminate . chars
        cntofix2<-gsub("Acc","acceleration",cntofix1) ##spelling out "accel..."
        cntofix3<-gsub("X","axisx",cntofix2) ## add "axis" before axis labels
        cntofix4<-gsub("Y","axisy",cntofix3) ## add "axis" before axis labels
        cntofix5<-gsub("Z","axisz",cntofix4) ## add "axis" before axis labels
        ##spell out variable domains t=time and f=freq
        cntofix6<-paste(sub("t","time",substring(cntofix5,1,1)),
                        substring(cntofix5,2,nchar(cntofix5)),sep="")
        cntofix7<-paste(sub("f","freq",substring(cntofix6,1,1)),
                        substring(cntofix6,2,nchar(cntofix6)),sep="")
        cleancn<-tolower(cntofix7) ##change all char to lower case
        cleancn<-gsub("bodybody","body",cleancn) ##remove double label
        cleancn<-gsub("bodygyro","angularvelocity",cleancn)
        colnames(data6)<-cleancn  ## replace labels 
        
##5.  Create and write tidy_data_set.csv
        data10<-melt(data6,id=c( "subject", "activity"), measure.vars = 3:68)
        data11<-ddply(data10,.(subject,activity,variable),summarize,value=mean(value))
        data12<-dcast(data11,subject+activity~variable)
        write.table(data12,file="tidy_data.txt",row.names=FALSE)


}
