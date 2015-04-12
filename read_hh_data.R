download.file("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "./household_power_consumption.zip")

unzip("./household_power_consumption.zip")

hhpower <- read.table("./household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE, header = TRUE)

hhpower <- tbl_df(hhpower)

hh_ <- hhpower %>% filter(Date=="1/2/2007" | Date=="2/2/2007")

hh_$Date <- dmy_hms(paste(hh_$Date, hh_$Time))

hh_ <- select(hh_, -Time)