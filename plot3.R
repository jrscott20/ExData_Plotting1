## Exploratory data analysis
## Project 1
library(data.table)
library(lubridate)
library(datasets)
filepath = paste("C:/Users/Jason/Dropbox/Coursera/",
                 "04_ExploratoryAnalysis/data/household_power_consumption.txt",sep="")


#import data
classes=c("character","character","numeric","numeric","numeric","numeric","numeric",
          "numeric","numeric")
d1<-read.table(filepath,header=TRUE, sep = ";",
               na.strings="?",colClasses=classes)



#subset data by date feb 1 2007 and feb 2 2007
d2<-d1[which(d1$Date=='1/2/2007' | d1$Date=='2/2/2007'),]

#format dates and times as dates and times instead of characters
d2$Time<-strptime(paste(d2$Date,d2$Time),format='%d/%m/%Y %H:%M:%S',tz="")
d2$Date<-as.Date(d2$Date,format='%d/%m/%Y')

##plot 3
png(file="C:/Users/Jason/datasciencecoursera/ExploratoryDataProjects/ExData_Plotting1/plot3.png")


plot(d2$Time,d2$Sub_metering_1,type="l",
             xlab="",ylab="Energy sub metering",col="black")



lines(d2$Time,d2$Sub_metering_2,col="red")
lines(d2$Time,d2$Sub_metering_3,col="blue")


legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1),col=c("black","red","blue"))



#save with width and height of 480 pixels
png(filename="C:/Users/Jason/datasciencecoursera/ExploratoryDataProjects/ExData_Plotting1/plot3.png",width=480,height=480)

dev.off()

dev.off()

dev.off()
