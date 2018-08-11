

myfile <- read.csv("D:/Training/household_power_consumption.txt", sep=";")

myfile2 <- subset(myfile, Date %in% c("1/2/2007","2/2/2007"))

myfile2$Date <- (strptime(paste(myfile2$Date,myfile2$Time),"%d/%m/%Y %H:%M:%S"))

myfile2$Global_active_power <- as.numeric(myfile2$Global_active_power)



png(filename = "D:/Training/plot1.png", width = 480, height = 480)

hist(myfile2$Global_active_power/1000, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()