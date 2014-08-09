consumption_data <- read.csv("consumption_data.csv")
hist(consumption_data$Global_active_power,col="Red",
     xlab="Global Active Power (Kilowatts)",main="Global Active Power")
