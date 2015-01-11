png('plot2.png') #To save plot1 in PNG format
#To convert the Date and Time variables to Date/Time classes
my.data$day <- strptime(paste(my.data$Date, my.data$Time), "%d/%m/%Y %H:%M:%S")
plot(my.data$day, my.data$Global_active_power,xlab="", ylab = "Global Active Power (kilowatts)",type='l')
dev.off() #without this command, the file doesn't save properly