#Reading data
consumption <- read.table("household_power_consumption.txt",sep=";",header=T)
consumption$datetime <- as.POSIXct(paste(consumption$Date,consumption$Time),format= "%d/%m/%Y %H:%M:%S")
consumption$dateformat <- as.Date(consumption$Date,"%d/%m/%Y")
consumption_data <- subset(consumption, dateformat >= as.Date("2007-02-01") & dateformat <= as.Date("2007-02-02"))
consumption_data$day <- weekdays(consumption_data$dateformat)
consumption_data <- consumption_data[order(consumption_data$datetime),]
#subsetted clean file to be used for making plots
write.csv(consumption_data,"consumption_data.csv")
