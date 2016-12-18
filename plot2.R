
## Data Preparation

df <- read.table("./data/household_power_consumption.txt", header = TRUE, sep = ";", na = "?")

data <- df[df$Date %in% c("1/2/2007","2/2/2007"), ]

timeline <- strptime(paste(data$Date, data$Time, sep = " "), "%d/%m/%Y %H:%M:%S")


## Drawing

png("plot2.png", width = 480, height = 480)

plot(timeline, as.numeric(data$Global_active_power), type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()


