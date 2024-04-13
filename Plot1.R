
# Convert the 'Date' column to Date format
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

# Filter the data for January 2nd, 2007, and February 2nd, 2007
filtered_data <- subset(data, Date == as.Date("2007-02-01") | Date == as.Date("2007-02-02"))

class(filtered_data$Date)
class(filtered_data$Time)
class(filtered_data$Global_active_power)
filtered_data$Global_active_power <- as.numeric(filtered_data$Global_active_power)

png("plot1.png", width = 480, height = 480)  
hist(filtered_data$Global_active_power, main= "Global Active Power", 
     col= "red", 
     xlab = "Global Active Power (kilowatts)", 
     ylab= "Frequency", 
     xlim = c(0,6))
dev.off()