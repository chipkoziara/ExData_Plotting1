par(mfrow = c(2, 2), mar = c(4, 4, 4, 4), oma = c(1, 1, 1, 1))

# here four plots are filled in with their respective titles
# top left
with(hh_, plot(Date, as.numeric(Global_active_power), type = "n", ylab = "Global Active Power", xlab = ""))
with(hh_, lines(Date, as.numeric(Global_active_power)))

# top right
with(hh_, plot(Date, as.numeric(Voltage), type = "n", ylab = "Voltage", xlab = "datetime"))
with(hh_, lines(Date, as.numeric(Voltage)))


# bottom left 
with(hh_, plot(Date, as.numeric(Sub_metering_1), type = "n", ylab = "Energy sub metering", xlab = ""))

with(hh_, lines(Date, as.numeric(Sub_metering_1), col="black"))
with(hh_, lines(Date, as.numeric(Sub_metering_2), col="red"))
with(hh_, lines(Date, as.numeric(Sub_metering_3), col="blue"))
legend("topright", cex = .5, bty = "n", lty = c(1, 1, 1), col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# bottom right
with(hh_, plot(Date, as.numeric(Global_reactive_power), type = "n", ylab = "Global_reactive_power", xlab = "datetime"))
with(hh_, lines(Date, as.numeric(Global_reactive_power)))

# need to add the PNG stuff
dev.copy(png, file = "./plot4.png") 
dev.off()