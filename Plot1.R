##IMPORTANT: YOU NEED TO HAVE THE READ_DATA.R AND PLOT1.R FILES IN THE SAME DIRECTORY
##TO GET THE RESULTS NEEDED.
##Load the data using Read_data.R Script
source("Read_Data.R")
#Open PNG Device
png(filename = "Plot1.png", width = 640, height = 480, bg = "transparent") 
with(DataNeeded,
      hist(Global_active_power,col = "red",main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)"))
##,breaks = 12, ylim = c(0, 1200)
#Closes the device
dev.off()