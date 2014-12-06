
# source the loadData.R script to populate the requisite data into variable epcData
# (epc means Electric Power Consumption)

source("loadData.R")

# Create the plot

png(file="plot2.png", height=480, width=480)
  with(epcData,plot(dateTime,
              Global_active_power,
              type="l", 
              xlab="", # No X axis is required so removing the default one. 
              ylab = "Global Active Power (kilowatts)"))

dev.off()