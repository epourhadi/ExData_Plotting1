> #step1:plotting "Global Active Power" in histogram 
> 
> ####################data loading process
> 
> rm(list = ls())
> data <- read.table("household_power_consumption.txt", header = T, 
+                    sep = ";", na.strings = "?")
> # Date variable in Date class
> data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
> 
> # subsetting process
> data <- subset(data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
> 
> # transforming dates and times 
> data$datetime <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")
> 
> attach(data)
The following objects are masked from data (pos = 3):

    Date, datetime, Global_active_power, Global_intensity,
    Global_reactive_power, Sub_metering_1, Sub_metering_2,
    Sub_metering_3, Time, Voltage

> hist(Global_active_power, main = "Global Active Power", 
+      xlab = "Global Active Power (kilowatts)", col = "Red")
> 
> #saving the R file
> dev.copy(png, file = "plot1.png", height = 480, width = 480)
png 
  3 
> dev.off()
windows 
      2 
> detach(data)
> 
