#
# Loads the "Individual household electric power consumption Data Set” into variable
# epcData variable to be used by plot scripts 1 to 4. 
#

#
# Check if the epcData variable does not exist and if so load the data.
#

if (!exists(x="epcData")) {
  
  # Get the Data File
  dataFileName = "household_power_consumption.txt"
  if (!file.exists(dataFileName)) {
    dataUrl = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    zipFileName = "exdata-data-household_power_consumption.zip"
    download.file(dataUrl,destfile = zipFileName, mode="wb")
    unzip(zipFileName) 
  }
  
  # Load the file into memory and create a native datetime column for filtering.
  
  data <- read.table(dataFileName, sep = ";", header = TRUE, na.strings="?")
  data$dateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
  
  # Filter out the data for days: 2007-02-01 and 2007-02-02
  epcData <- data[data$dateTime >= "2007-02-01" & data$dateTime < "2007-02-03",]
}