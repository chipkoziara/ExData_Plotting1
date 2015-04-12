with(hh_, plot(Date, as.numeric(Sub_metering_1), type = "n", ylab = "Energy sub metering", xlab = ""))

with(hh_, lines(Date, as.numeric(Sub_metering_1), col="black"))
with(hh_, lines(Date, as.numeric(Sub_metering_2), col="red"))
with(hh_, lines(Date, as.numeric(Sub_metering_3), col="blue"))

legend("topright", lty = c(1, 1, 1), col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# need to add the PNG stuff
dev.copy(png, file = "./plot3.png") 
dev.off()
