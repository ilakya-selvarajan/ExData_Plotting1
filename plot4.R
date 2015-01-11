png('plot4.png') #To save plot1 in PNG format
par(mfrow = c(2,2)) #To produce the plots in 2 rows and 2 columns
#To convert the Date and Time variables to Date/Time classes
my.data$day <- strptime(paste(my.data$Date, my.data$Time), "%d/%m/%Y %H:%M:%S")
#used multiple base plots
with(my.data, {
  plot(day,Global_active_power, type='l',ylab="Global Active Power",xlab="") #plot1
  plot(day,Voltage, type='l',ylab="Voltage",xlab="datetime")  #plot2
  plot(day, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering") #plot3
  points(day, Sub_metering_2, type = "l", xlab = "", ylab = "Energy sub metering", col = "red")
  points(day, Sub_metering_3, type = "l", xlab = "", ylab = "Energy sub metering", col = "blue")
  legend("topright", lty=1, bty="n", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  plot(Datetime,Global_reactive_power, type="l", ylab="Global Reactive Power",xlab="datetime") #plot4
})
dev.off() #without this command, the file doesn't save properly
