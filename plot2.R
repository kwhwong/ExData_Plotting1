# Course Project 1 of Exploratory Data Analysis
# plot2.R
# Construct Plot 2 and save as a PNG file (480x480 pixels)

setwd( paste(getwd(), "/Coursera/Exploratory Data Analysis/ExData_Plotting1", sep="") )

pc <- read.csv( "../exdata-data-household_power_consumption/household_power_consumption.01-02Feb2007.txt", sep=";", 
                colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric") )
dt <- with( pc, strptime( paste(Date, Time ), "%d/%m/%Y %T") )
power_consumption <- cbind( dt, pc )

par(ps=12)
with( power_consumption, {
        plot( dt, Global_active_power, type="n", xlab="", ylab="Global Active Power (kilowatts)" )
        lines( dt, Global_active_power )
     } )

dev.copy(png, file = "plot2.png")
dev.off()
