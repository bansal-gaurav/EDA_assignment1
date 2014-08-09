consumption_data <- read.csv("consumption_data.csv")
consumption_data$datetime <- as.POSIXct(paste(consumption_data$Date,consumption_data$Time),format= "%d/%m/%Y %H:%M:%S")
plot(consumption_data$datetime,consumption_data$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")
