
## Data Preparation

df <- read.table("./data/household_power_consumption.txt", header = TRUE, sep = ";", na = "?")

data <- df[df$Date %in% c("1/2/2007","2/2/2007"), ]


## Drawing

png("plot1.png", width=480, height=480)

hist(as.numeric(data$Global_active_power), col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

dev.off()

