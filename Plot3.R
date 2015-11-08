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
