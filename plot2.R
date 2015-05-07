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

## 2
plot(DT$Formatted.Dates, DT$Global_active_power, type = "l", bg = par("bg"), cex = .6, main = " ", ylab = "Global Active Power (kilowatts)", xlab = " ")
dev.copy(png, "plot2.png")
dev.off()