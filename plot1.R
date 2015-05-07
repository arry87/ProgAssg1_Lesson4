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

## PLOT CODE: Plot1
hist(DT$Global_active_power, xlab = "Global Active Power (kilowatts)", main = "Global Active Power", col = "red")
dev.copy(png, "plot1.png")
dev.off()