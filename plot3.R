## Define required libraries
library(stringr)
library(lubridate)
## ##################################

## ##################################
## ATTENTION!!!!
## SOURCE read_data.R BEFORE RUNNING 
## THIS CODE (USER_DEFINED FUNCTION)
## ##################################


## READ DATA AND STORE IN OBJECT 'DT'
filename = "household_power_consumption.txt"
DT <- read_data(filename)

## 3
with(DT, plot(Formatted.Dates, Sub_metering_1, type = "l", bg = par("bg"), cex = .6, main = " ", ylab = "Energy sub metering", xlab = " "))
lines(DT$Formatted.Dates, DT$Sub_metering_2, type = "l", bg = par("bg"), cex = .6, col = "red", ylab = "Energy sub metering", xlab = " ")
lines(DT$Formatted.Dates, DT$Sub_metering_3, type = "l", bg = par("bg"), cex = .6, col = "blue", ylab = "Energy sub metering", xlab = " ")
legend("topright", lty , legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty = "solid", cex = 0.6, col = c("black", "red", "blue"))
dev.copy(png, "plot3.png")
dev.off()