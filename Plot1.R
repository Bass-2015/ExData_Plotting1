file <- "./household_power_consumption.txt"
alldata <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
assignment1Data <- alldata[alldata$Date %in% c("1/2/2007","2/2/2007") ,]
GAPower <- as.numeric(assignment1Data$Global_active_power)
png("plot1.png", width=480, height=480)
hist(GAPower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")