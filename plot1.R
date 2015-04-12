## Exploratory data analysis
## Project 1
library(data.table)
filepath = paste("C:/Users/Jason/Dropbox/Coursera/",
"04_ExploratoryAnalysis/data/household_power_consumption.txt",sep="")


#import data
classes=c("character","character","numeric","numeric","numeric","numeric","numeric",
          "numeric")
d1<-read.table(filepath,header=TRUE, sep = ";",
               na.strings="?",colClasses=classes)

  

#subset data by date feb 1 2007 and feb 2 2007
d2<-d1[which(d1$Date=='1/2/2007' | d1$Date=='2/2/2007'),]

#format dates and times as dates and times instead of characters
d2$Time<-strptime(paste(d2$Date,d2$Time),format='%d/%m/%Y %H:%M:%S',tz="")
d2$Date<-as.Date(d2$Date,format='%d/%m/%Y')

##plot 1
png(file="C:/Users/Jason/datasciencecoursera/ExploratoryDataProjects/ExData_Plotting1/plot1.png")
hist(d2$Global_active_power,
     col="red", xlab="Global Active Power (kilowatts)",
     main="Global Active Power",ylim=c(0,1300))
axis(2,at=c(1000))

#save with width and height of 480 pixels
png(filename="plot1.png",width=480,height=480)

dev.off()
dev.off()




     










