

myfile <- read.table("D:/Training/household_power_consumption.txt", header = TRUE, sep=";")

myfile2 <- subset(myfile,  
                  as.Date(as.character(myfile$Date), format="%d/%m/%Y") == as.Date("2007-02-01") | 
                    as.Date(as.character(myfile$Date), format="%d/%m/%Y") == as.Date("2007-02-02")
                  )
                  
                  
myfile2$Global_active_power <- as.numeric(as.character(myfile2$Global_active_power))



png(filename = "D:/Training/plot1.png", width = 480, height = 480)

hist(myfile2$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()
