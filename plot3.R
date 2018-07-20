> #project title: plot3 
> 
> ############################
> #data loading 
> rm(list = ls())
> data <- read.table("household_power_consumption.txt", header = T, 
+                    sep = ";", na.strings = "?")
> #date variable into Date class 
> data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
> 
> #data subsetting 
> data <- subset(data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
> 
> #transforming dates and times
> data$datetime <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")
> 
> #plotting
> data$datetime <- as.POSIXct(data$datetime)
> 
> attach(data)
> plot(Sub_metering_1 ~ datetime, type = "l", 
+      ylab = "Energy sub metering", xlab = "")
> lines(Sub_metering_2 ~ datetime, col = "Red")
> lines(Sub_metering_3 ~ datetime, col = "Blue")
> legend("topright", lty = 1, col = c("black", "red", "blue"), 
+        legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
> 
> dev.copy(png, file = "plot3.png", height = 480, width = 480)
png 
  3 
> dev.off()
windows 
      2 
> detach(data)
> 
