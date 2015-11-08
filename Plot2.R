file <- "./household_power_consumption.txt"
alldata <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
assignment1Data <- alldata[alldata$Date %in% c("1/2/2007","2/2/2007") ,]
DateTimeStamp <- strptime(paste(assignment1Data$Date, assignment1Data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GAPower <- as.numeric(assignment1Data$Global_active_power)
png("plot2.png", width=480, height=480)
plot(DateTimeStamp, GAPower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
