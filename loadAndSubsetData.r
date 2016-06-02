###Programmer: Deon Jacobs
##Date: 2016-06-02
##Script Description: 
##

loadAndSubsetData <- function()
{
  library(dplyr)
  
  setwd("E:\\Users\\home\\Documents\\Coursera\\Data Science Specialization\\Exploratory Data Analysis")
  
  #read electric power consumption datafile and store locally
  elecpwrcons <- read.table(file.path("household_power_consumption.txt" ),header = TRUE, sep=";",
                            colClasses=c("character", "character", rep("numeric",7)), na="?")
  
  # convert date and time variables to Date/Time class
  elecpwrcons$Time <- strptime(paste(elecpwrcons$Date,elecpwrcons$Time), "%d/%m/%Y %H:%M:%S")
  elecpwrcons$Date <- as.Date(elecpwrcons$Date, "%d/%m/%Y")
  # filter dates 2007-02-01 and 2007-02-02 from consumption data set
  filtDates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
  subData <- subset(elecpwrcons, Date %in% filtDates)
  
  subData
  
}