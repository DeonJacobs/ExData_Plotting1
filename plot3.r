plot3 <- function(subSetData)
{
  png(file="plot3.png",width=480,height=480)
  
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
  
  dev.off()
}