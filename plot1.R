# Course Project 1 of Exploratory Data Analysis
# plot1.R
# Construct Plot 1 and save as a PNG file (480x480 pixels)

#setwd( paste(getwd(), "/Coursera/Exploratory Data Analysis/ExData_Plotting1", sep="") )

power_consumption <- read.csv( "../exdata-data-household_power_consumption/household_power_consumption.01-02Feb2007.txt", sep=";", 
                               colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric") )

par(ps=12)
hist( power_consumption$Global_active_power, col="red",
      xlab="Global Active Power (kilowatts)",
      main="Global Active Power" )

dev.copy(png, file = "plot1.png")
dev.off()
