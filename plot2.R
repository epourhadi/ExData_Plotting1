> # project title: plot2
> 
> #####################################
> #Data loading process
> rm(list = ls())
> data <- read.table("household_power_consumption.txt", header = T, 
+                    sep = ";", na.strings = "?")
> 
> #Date variable into Date class 
> data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
> 
> #Data Subsetting 
> data <- subset(data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
> 
> #transforming dates and times
> data$datetime <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")
> 
> #plotting 
> data$datetime <- as.POSIXct(data$datetime)
> attach(data)
The following objects are masked from data (pos = 3):

    Date, datetime, Global_active_power, Global_intensity,
    Global_reactive_power, Sub_metering_1, Sub_metering_2,
    Sub_metering_3, Time, Voltage

> plot(Global_active_power ~ datetime, type = "l",
+      ylab = "Global Active Power (kilowatts)", xlab = "")
> dev.copy(png, file = "plot2.png", height = 480, width = 480)
png 
  3 
> dev.off()
null device 
          1 
> detach(data)
> 
