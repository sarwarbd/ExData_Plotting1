

myfile <- read.table("D:/Training/household_power_consumption.txt", header = TRUE, sep=";")

myfile2 <- subset(myfile,  
                  as.Date(as.character(myfile$Date), format="%d/%m/%Y") == as.Date("2007-02-01") | 
                    as.Date(as.character(myfile$Date), format="%d/%m/%Y") == as.Date("2007-02-02")
)

myfile2$Global_active_power <- as.numeric(as.character(myfile2$Global_active_power))

dt <- strptime(paste(myfile2$Date, myfile2$Time), "%d/%m/%Y %H:%M:%S")


png(filename = "D:/Training/plot3.png", width = 480, height = 480)


plot(dt,as.numeric(as.character(myfile2$Sub_metering_1)), type="l", xlab = ""
     , ylab = "Energy sub metering")
lines(dt,as.numeric(as.character(myfile2$Sub_metering_2)), col = "red")
lines(dt,as.numeric(as.character(myfile2$Sub_metering_3)), col = "blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col=c("black","red","blue"), lty=1)

dev.off()
