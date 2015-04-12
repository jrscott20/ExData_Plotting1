## Exploratory data analysis
## Project 1
library(data.table)
filepath = paste("C:/Users/Jason/Dropbox/Coursera/",
"04_ExploratoryAnalysis/data/household_power_consumption.txt",sep="")


#import data
classes=c("character","character","numeric","numeric","numeric","numeric","numeric",
          "numeric")
d1<-read.table(filepath,header=TRUE, sep = ";",
               na.strings="?",colClasses=classes,nrows=2075265)

  

#subset data by date feb 1 2007 and feb 2 2007
d2<-d1[which(d1$Date=='1/2/2007' | d1$Date=='2/22/2007'),]

#format dates and times as dates and times instead of characters
d2$Time<-strptime(d2$Time,format='%H')
d2$Date<-as.Date(d2$Date,format='%D')



