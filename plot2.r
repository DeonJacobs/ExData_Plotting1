plot2 <- function(subSetData)
{
  png(file="plot2.png",width=480,height=480)
  
  plot(subSetData$Time, 
       subSetData$Global_active_power, 
       type="l",
       xlab="",
       ylab="Global Active Power (kilowatts)")
  
  dev.off()
}