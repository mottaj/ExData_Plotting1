power <- read.csv("./data/subset2007Feb1-2.txt",
                  sep = ";", na.strings = "?", as.is = TRUE)
power$datetime <- strptime(paste(power$Date, power$Time),
                           format = "%d/%m/%Y %H:%M:%S")
png(filename = "plot4.png", width = 480, height = 480)

# Set up 2x2 grid for 4 plots in same PNG file
par(mfrow = c(2, 2))

# 1st plot: top-left corner
with(power, plot(datetime, Global_active_power, type = "l",
                 xlab = "", ylab = "Global Active Power") )

# 2nd plot: top-right corner
with(power, plot(datetime, Voltage, type = "l"))

# 3rd plot: bottom-left corner
with(power, plot(datetime, Sub_metering_1, type = "l",
                 xlab = "", ylab = "Energy sub metering"))
with(power, lines(datetime, Sub_metering_2, col = "red"))
with(power, lines(datetime, Sub_metering_3, col = "blue"))
legend("topright", lty = 1, col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# 4th plot: bottom-right corner
with(power, plot(datetime, Global_reactive_power, type = "l"))

dev.off()