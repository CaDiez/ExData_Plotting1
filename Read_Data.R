## This script have been made to load the large DS and then create
##a new one called dataNeeded which is going to use for plotting

#Get data from the internet
fileURL<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
fname <- "household_power_consumption.zip"
if(!file.exists(fname)) {
        download.file(fileURL, destfile=fname)
}
FData <- unzip(fname, "household_power_consumption.txt")
data <- read.table(FData,header = TRUE,sep = ";",colClasses = c("character", "character", rep("numeric",7)),na = "?")
## According to the asignment we only need 2 days
DaysFilter <- data$Date == "1/2/2007" | data$Date == "2/2/2007"
DataNeeded <- data[DaysFilter, ]
# Clean Memory
rm(data)
##Create the DateTime column
DataNeeded$DateAndTime <- paste(DataNeeded$Date, DataNeeded$Time)
#Format the column with the desired format
DataNeeded$DateTime <- strptime(DataNeeded$DateAndTime, "%d/%m/%Y %H:%M:%S")
#Subset only the rows we need
rownames(DataNeeded) <- 1:nrow(DataNeeded)