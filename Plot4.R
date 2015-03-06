##IMPORTANT: YOU NEED TO HAVE THE READ_DATA.R AND PLOT4.R FILES IN THE SAME DIRECTORY
##TO GET THE RESULTS NEEDED.
##Load the data using Read_data.R Script
source("Read_Data.R")
#Open Device
png(filename = "Plot4.png", width = 640, height = 480, bg = "transparent")
## Initialize parameters
par(mfrow = c(2, 2))
## Start drawing top left graphic
with(DataNeeded,
     plot(DateTime, Global_active_power, 
     type = "l",
     xlab = "", ylab = "Global Active Power"))
## Start drawing top right graphic
with(DataNeeded,
plot(DateTime, Voltage,
     type = "l",
     xlab = "datetime", ylab = "Voltage"))
## Start drawing bottom left graphic
with(DataNeeded,
     plot(DateTime, Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering"))
#Add lines to the bottom left graph
lines(DataNeeded$DateTime, DataNeeded$Sub_metering_2, col = "red")
lines(DataNeeded$DateTime, DataNeeded$Sub_metering_3, col = "blue")
# Remove the border of legend here.
legend("topright", 
       bty = "n",
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)
##Start drawing bottom right graphic
with (DataNeeded,
     plot(DateTime, Global_reactive_power, 
     type = "l",
     col = "black",
     xlab = "datetime", ylab = colnames(DataNeeded)[4]))
#Close the device
dev.off()