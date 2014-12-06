#
# plot1.R - Generates file plot1.png.
#

# source the loadData.R script to populate the requisite data into variable epcData
# (epc means Electric Power Consumption)
source("loadData.R")

# Create the plot

png(file="plot1.png", height=480, width=480)
  hist((as.numeric(epcData$Global_active_power,na.omit=T)), 
        xlab = "Global Active Power (kilowatts)", 
        col="RED", main = "Global Active Power")
dev.off()




