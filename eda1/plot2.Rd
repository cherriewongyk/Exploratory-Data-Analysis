data<-read.table("household_power_consumption.txt", header= FALSE, sep = ";" , dec = ".", na.strings = "?", skip = 66637, nrows = 2880 , col.names=c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"))
head(data,n=10)
tail(data,n=10)


#Graph 2

png("plot2.png", width=480, height=480, units="px")
dev.new()
plot(DateTime, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)", family="Arial Unicode MS")
dev.off()