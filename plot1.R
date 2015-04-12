with(hh_, hist(as.numeric(Global_active_power), main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)"))

# need to add the PNG stuff
dev.copy(png, file = "./plot1.png") 
dev.off()
