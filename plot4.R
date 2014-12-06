#
# plot4.R - Generates file plot4.png.
#


# source the loadData.R script to populate the requisite data into variable epcData
# (epc means Electric Power Consumption)

source("loadData.R")

png(file="plot4.png", height=480, width=480)

par(mfrow= c(2,2))

  with(epcData,plot(dateTime,
                     Global_active_power,
                     type="l", 
                     xlab="", # No X axis is required so removing the default one. 
                     ylab = "Global Active Power"))
  
  with(epcData,plot(dateTime,
                     Voltage,
                     type="l", 
                     xlab="datetime",
                     ylab = "Voltage"))
  
  with(epcData,{
    plot(dateTime,Sub_metering_1, type="l", xlab="", ylab = "Energy Sub Metering",col="BLACK")
    points(dateTime,Sub_metering_2,type="l",col="RED")
    points(dateTime,Sub_metering_3,type="l",col="BLUE")
  })
  
  legend("topright",
         bty="n",       
         lty = 1, lwd=1, 
         col = c("black", "red", "blue"), 
         legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
  )
  
  with(epcData,plot(dateTime,
                     Global_reactive_power,
                     type="l", 
                     xlab="datetime"
  ))

dev.off()