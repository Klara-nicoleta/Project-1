png("plot4.png", width = 480, height = 480)  

with(filtered_data, {
  par(mfrow = c(2, 2))
  plot(Time, Global_active_power, 
       xlab = "Time", ylab = "Global Active Power",
       type= "l")
  plot(Time, Sub_metering_1, 
       xlab = "Time", ylab = "Sub_metering_1",
       col = "black", type = "l")
  lines(Time, Sub_metering_2, col = "red")
  lines(Time, Sub_metering_3, col = "blue")
  plot(Time, Voltage, 
       xlab = "Time", ylab = "Voltage",
       type= "l")
  plot(Time, Global_reactive_power, 
       xlab = "Time", ylab = "Global Reactive Power",
       type = "l")
})
dev.off()