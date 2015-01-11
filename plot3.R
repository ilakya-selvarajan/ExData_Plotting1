png('plot3.png') #To save plot1 in PNG format
#To convert the Date and Time variables to Date/Time classes
my.data$day <- strptime(paste(my.data$Date, my.data$Time), "%d/%m/%Y %H:%M:%S")
plot(my.data$day, my.data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(my.data$day, my.data$Sub_metering_2, type = "l", xlab = "", ylab = "Energy sub metering", col = "red")
points(my.data$day, my.data$Sub_metering_3, type = "l", xlab = "", ylab = "Energy sub metering", col = "blue")
legend("topright", col = c("black", "red", "blue"), lty=1, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off() #without this command, the file doesn't save properly