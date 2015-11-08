file <- "./household_power_consumption.txt"
alldata <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
assignment1Data <- alldata[alldata$Date %in% c("1/2/2007","2/2/2007") ,]
GAPower <- as.numeric(assignment1Data$Global_active_power)
png("plot1.png", width=480, height=480)
hist(GAPower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()


file <- "./household_power_consumption.txt"
alldata <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
assignment1Data <- alldata[alldata$Date %in% c("1/2/2007","2/2/2007") ,]
DateTimeStamp <- strptime(paste(assignment1Data$Date, assignment1Data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GAPower <- as.numeric(assignment1Data$Global_active_power)
png("plot2.png", width=480, height=480)
plot(DateTimeStamp, GAPower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()


file <- "./household_power_consumption.txt"
alldata <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
assignment1Data <- alldata[alldata$Date %in% c("1/2/2007","2/2/2007") ,]
DateTimeStamp <- strptime(paste(assignment1Data$Date, assignment1Data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GAPower <- as.numeric(assignment1Data$Global_active_power)
submetering1 <- as.numeric(assignment1Data$Sub_metering_1)
submetering2 <- as.numeric(assignment1Data$Sub_metering_2)
submetering3 <- as.numeric(assignment1Data$Sub_metering_3)
png("plot3.png", width=480, height=480)
plot(DateTimeStamp, submetering1, type="l", ylab="Energy Submetering", xlab="")
lines(DateTimeStamp, submetering2, type="l", col="red")
lines(DateTimeStamp, submetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=1.5, col=c("black", "red", "blue"))
dev.off()




file <- "./household_power_consumption.txt"
alldata <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
assignment1Data <- alldata[alldata$Date %in% c("1/2/2007","2/2/2007") ,]
DateTimeStamp <- strptime(paste(assignment1Data$Date, assignment1Data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GAPower <- as.numeric(assignment1Data$Global_active_power)
GRAPower <- as.numeric(assignment1Data$Global_reactive_power)
Voltage <- as.numeric(assignment1Data$Voltage)
submetering1 <- as.numeric(assignment1Data$Sub_metering_1)
submetering2 <- as.numeric(assignment1Data$Sub_metering_2)
submetering3 <- as.numeric(assignment1Data$Sub_metering_3)
png("plot3.png", width=480, height=480)
par(mfrow = c(2, 2)) 
plot(DateTimeStamp, GAPower, type="l", xlab="", ylab="Global Active Power", cex=0.2)
plot(DateTimeStamp, Voltage, type="l", xlab="datetime", ylab="Voltage")
plot(DateTimeStamp, submetering1, type="l", ylab="Energy Submetering", xlab="")
lines(DateTimeStamp, submetering2, type="l", col="red")
lines(DateTimeStamp, submetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=1.5, col=c("black", "red", "blue"), bty="o")
plot(DateTimeStamp, GRAPower, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()








