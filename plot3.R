power <- read.csv("./data/subset2007Feb1-2.txt",
                  sep = ";", na.strings = "?", as.is = TRUE)
power$datetime <- strptime(paste(power$Date, power$Time),
                           format = "%d/%m/%Y %H:%M:%S")
png(filename = "plot3.png", width = 480, height = 480)
with(power, plot(datetime, Sub_metering_1, type = "l",
                 xlab = "", ylab = "Energy sub metering"))
with(power, lines(datetime, Sub_metering_2, col = "red"))
with(power, lines(datetime, Sub_metering_3, col = "blue"))
legend("topright", lty = 1, col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()