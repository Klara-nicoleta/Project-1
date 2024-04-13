filtered_data$Time <- as.POSIXct(paste("1970-01-01", filtered_data$Time))
plot(filtered_data$Time, filtered_data$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power (kilowatts)",
     main = "Average Global Active Power by Hour",
     col = "blue")