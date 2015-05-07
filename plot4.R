## Define required libraries
library(stringr)
library(lubridate)
## ##################################

## ##################################
## ATTENTION!!!!
## SOURCE 'read_data.R' BEFORE RUNNING 
## THIS CODE (USER_DEFINED FUNCTION)
## ##################################


## READ DATA AND STORE IN OBJECT 'DT'
## ##################################
filename = "household_power_consumption.txt"
DT <- read_data(filename)
## ##################################

## 4 Sub-plotting
#####################################
##    - Defined 2x2 block
##    - Plot requisite quantities with scaled 
##      x and y labels and legends using the cex parameter
#####################################

par(mfrow = c(2,2))
plot(DT$Formatted.Dates, DT$Global_active_power, type = "l", main = " ", ylab = list("Global Active Power", cex = 0.8), xlab = " ")
plot(DT$Formatted.Dates, DT$Voltage, type = "l", main = "", ylab = list("Voltage", cex = 0.8), xlab = list("datetime", cex = 0.8))
with(DT, plot(Formatted.Dates, Sub_metering_1, type = "l", main = " ", bg = par("bg"), cex = .6, ylab = list("Energy sub metering", cex = 0.8), xlab = " "))
lines(DT$Formatted.Dates, DT$Sub_metering_2, type = "l", bg = par("bg"), cex = .6, col = "red", ylab = list("Energy sub metering", cex = 0.8), xlab = " ")
lines(DT$Formatted.Dates, DT$Sub_metering_3, type = "l", bg = par("bg"), cex = .6, col = "blue", ylab =list("Energy sub metering", cex = 0.8), xlab = " ")
legend(x="topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),cex = 0.7, lty = "solid", bty = "n", col = c("black", "red", "blue"), y.intersp = 0.5, x.intersp = 1.0, seg.len = 1)
plot(DT$Formatted.Dates, DT$Global_reactive_power, type = "l", bg = par("bg"), cex = .6, main = " ", ylab = list("Global_reactive_power", cex = 0.8), xlab = list("datetime", cex = 0.8))
dev.copy(png, "plot4.png")
dev.off()