##IMPORTANT: YOU NEED TO HAVE THE READ_DATA.R AND PLOT2.R FILES IN THE SAME DIRECTORY
##TO GET THE RESULTS NEEDED.
##Load the data using Read_data.R Script
source("Read_Data.R")
#Open PNG Device
png(filename = "Plot2.png", width = 640, height = 480, bg = "transparent")
with(DataNeeded,
     plot(DateTime, Global_active_power, type = "l", xlab = "", 
     ylab = "Global Active Power (kilowatts)"))
#Closes the device
dev.off()