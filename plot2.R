power <- read.csv("./data/subset2007Feb1-2.txt",
                  sep = ";", na.strings = "?", as.is = TRUE)

power$datetime <- strptime(paste(power$Date, power$Time),
                           format = "%d/%m/%Y %H:%M:%S")
png(filename = "plot2.png", width = 480, height = 480)
with(power,
     plot(datetime, Global_active_power, type = "l",
          xlab = "", ylab = "Global Active Power (kilowatts)") )

dev.off()