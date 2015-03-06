##IMPORTANT: YOU NEED TO HAVE THE READ_DATA.R AND PLOT3.R FILES IN THE SAME DIRECTORY
##TO GET THE RESULTS NEEDED.
##Load the data using Read_data.R Script
source("Read_Data.R")
#Open Device
png(filename = "Plot3.png", width = 640, height = 480, bg = "transparent")
with(DataNeeded, plot(DateTime, Sub_metering_1, 
     type = "l",col = "black", xlab = "", ylab = "Energy sub metering"))
##Change line colors
lines(DataNeeded$DateTime, DataNeeded$Sub_metering_2, col = "red")
lines(DataNeeded$DateTime, DataNeeded$Sub_metering_3, col = "blue")
#Add legends
legend("topright", col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lwd = 1)
##Close the Device
dev.off()
