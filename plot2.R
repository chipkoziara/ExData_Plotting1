with(hh_, plot(Date, as.numeric(Global_active_power), type = "n", ylab = "Global Active Power (kilowatts)", xlab = ""))

with(hh_, lines(Date, as.numeric(Global_active_power)))

# need to add the PNG stuff
dev.copy(png, file = "./plot2.png") 
dev.off()