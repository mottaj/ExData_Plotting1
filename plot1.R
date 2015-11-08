power <- read.csv("./data/subset2007Feb1-2.txt",
                  sep = ";", na.strings = "?", as.is = TRUE)
png(filename = "plot1.png", width = 480, height = 480)
hist(power$Global_active_power, col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowats)")
dev.off()