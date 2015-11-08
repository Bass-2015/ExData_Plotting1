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
sub-metering1 <- as.numeric(assignment1Data$Sub_metering_1)
sub-metering2 <- as.numeric(assignment1Data$Sub_metering_2)
sub-metering3 <- as.numeric(assignment1Data$Sub_metering_3)
png("plot3.png", width=480, height=480)
plot(Date&Time, sub-metering1, type="l", ylab="Energy Submetering", xlab="")
lines(Date&Time, sub-metering2, type="l", col="red")
lines(Date&Time, sub-metering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()