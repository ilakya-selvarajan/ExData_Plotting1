png('plot1.png') #To save plot1 in PNG format
#The following command produces a histogram for global active power in colour red
hist(my.data$Global_active_power, col="red", main="Global active power",xlab="Global active power (kilowatts)")
dev.off()   #without this command, the file doesn't save properly