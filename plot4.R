# Course Project 1 of Exploratory Data Analysis
# plot4.R
# Construct Plot 4 and save as a PNG file (480x480 pixels)

#setwd( paste(getwd(), "/Coursera/Exploratory Data Analysis/ExData_Plotting1", sep="") )

pc <- read.csv( "../exdata-data-household_power_consumption/household_power_consumption.01-02Feb2007.txt", sep=";", 
                colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric") )
dt <- with( pc, strptime( paste(Date, Time ), "%d/%m/%Y %T") )
power_consumption <- cbind( dt, pc )

png("plot4.png")
par( ps=12, mfrow=c(2,2) )
with( power_consumption, {
    plot( dt, Global_active_power, type="n", xlab="", ylab="Global Active Power" )
    lines( dt, Global_active_power )
} )

with( power_consumption, {
    plot( dt, Voltage, type="n", xlab="datetime")
    lines( dt, Voltage )
} )

with( power_consumption, {
        plot( dt, Sub_metering_1, type="n", xlab="", ylab="Energy sub metering" )
        lines( dt, Sub_metering_1, col="black" )
        lines( dt, Sub_metering_2, col="red" )
        lines( dt, Sub_metering_3, col="blue" )
        legend( "topright", legend=names(power_consumption[8:10]), col=c("black", "red", "blue"), lty=c(1,1,1), bty='n', cex=.85 )
     } )

with( power_consumption, {
    plot( dt, Global_reactive_power, type="n", xlab="datetime")
    lines( dt, Global_reactive_power )
} )

#dev.copy(png, file = "plot4.png")
dev.off()
