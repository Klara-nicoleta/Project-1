# Read the entire data
data <- read.table("/Users/klaramunteanu/Desktop/PERSONAL/Hopkins/Project 1 - Exploratory Data Analysis/household_power_consumption.txt", header = TRUE, sep = ";")

# Convert the 'Date' column to Date format
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

# Filter the data for January 2nd, 2007, and February 2nd, 2007
filtered_data <- subset(data, Date == as.Date("2007-02-01") | Date == as.Date("2007-02-02"))

