
## Data Preparation

df <- read.table("./data/household_power_consumption.txt", header = TRUE, sep = ";", na = "?")

data <- df[df$Date %in% c("1/2/2007","2/2/2007"), ]

timeline <- strptime(paste(data$Date, data$Time, sep = " "), "%d/%m/%Y %H:%M:%S")


## Drawing

png("plot4.png", width = 480, height = 480)

par(mfrow = c(2, 2)) 

plot(timeline, as.numeric(data$Global_active_power), type = "l", xlab = "", ylab = "Global Active Power", cex = 0.2)

plot(timeline, as.numeric(data$Voltage), type = "l", xlab = "datetime", ylab = "Voltage")

plot(timeline, as.numeric(data$Sub_metering_1), type = "l", ylab = "Energy sub metering", xlab = "")

lines(timeline, as.numeric(data$Sub_metering_2), type = "l", col = "red")

lines(timeline, as.numeric(data$Sub_metering_3), type = "l", col = "blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1, col = c("black", "red", "blue"), bty = "o")

plot(timeline, as.numeric(data$Global_reactive_power), type = "l", xlab = "datetime", ylab = "Global_reactive_power")

dev.off()


