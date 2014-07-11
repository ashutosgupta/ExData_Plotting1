
data <- read.table("E:/Coursera/EDA/Assig1/household_power_consumption.txt",sep=";",header=T,na.strings="?",stringsAsFactors=F)


data$Date <- as.Date(data$Date, format="%d/%m/%Y")


data <- subset(data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)



hist(data$Global_active_power, main="Global Active Power",
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")


dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
