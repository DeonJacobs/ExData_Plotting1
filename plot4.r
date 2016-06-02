plot4 <- function(subSetData)
{
  png(file="plot4.png",width=480,height=480)
  
  par(mfcol= c(2,2))
  
  #plot 2
  plot(subSetData$Time, 
       subSetData$Global_active_power, 
       type="l",
       xlab="",
       ylab="Global Active Power (kilowatts)")
  
  #plot 3
  plot(subSetData$Time, 
       subSetData$Sub_metering_1, 
       type="l",
       col="black",
       xlab="",
       ylab="Energy sub metering")
  
  lines(subSetData$Time, 
        subSetData$Sub_metering_2, 
        type="l",
        col="red")
  
  lines(subSetData$Time, 
        subSetData$Sub_metering_3, 
        type="l",
        col="blue")
  
  legend("topright",
         col=c("black", "red", "blue"),
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lty=1)
  
  plot(subSetData$Time, 
       subSetData$Voltage, 
       type="l",
       xlab="datetime",
       ylab="Voltage")
  
  plot(subSetData$Time, 
       subSetData$Global_reactive_power, 
       type="l",
       xlab="datetime",
       ylab="Global_reactive_power")
  
  dev.off()
}