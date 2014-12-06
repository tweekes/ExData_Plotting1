#
# plot3.R - Generates file plot3.png.
#


# source the loadData.R script to populate the requisite data into variable epcData
# (epc means Electric Power Consumption)

source("loadData.R")

# Create the plot

png(file="plot3.png", height=480, width=480)

with(epcData,{
  plot(dateTime,Sub_metering_1, type="l", xlab="", ylab = "Energy Sub Metering",col="BLACK")
  points(dateTime,Sub_metering_2,type="l",col="RED")
  points(dateTime,Sub_metering_3,type="l",col="BLUE")
})

legend("topright",
       lty = 1, lwd=1, 
       col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
)

dev.off()