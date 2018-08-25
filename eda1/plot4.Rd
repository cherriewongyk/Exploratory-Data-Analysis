data<-read.table("household_power_consumption.txt", header= FALSE, sep = ";" , dec = ".", na.strings = "?", skip = 66637, nrows = 2880 , col.names=c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"))
head(data,n=10)
tail(data,n=10)

#Graph 4 
png("plot4.png", width=480, height=480, units="px")

dev.new()
par(mfrow=c(2,2))
plot(DateTime, Global_active_power, type="l", xlab="", ylab="Global Active Power")
plot(DateTime, Voltage, type="l", xlab="datetime", ylab="Voltage")
plot(DateTime, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(DateTime, Sub_metering_2, col="red")
lines(DateTime, Sub_metering_3, col="blue")
legend("topright", lty=1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3" ))
plot(DateTime, Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()