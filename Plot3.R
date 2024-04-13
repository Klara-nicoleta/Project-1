
png("plot3.png", width = 480, height = 480)  
plot(filtered_data$Time, filtered_data$Sub_metering_1, 
     col= "black", type = "l",
     xlab = "", ylab = "Energy sub metering")
points(filtered_data$Time, filtered_data$Sub_metering_2,
       col="red", type = "l")
points(filtered_data$Time, filtered_data$Sub_metering_3,
       col="blue", type ="l")
dev.off()