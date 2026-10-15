# Pollution Data Cleaning and Exploration
# Yves Abdallah

# This script cleans the monitoring data, treats sentinel values as missing,
# creates city-level summaries, and identifies high-PM2.5 observations.

data <- read.csv("pollution.csv", stringsAsFactors = FALSE)

# Convert measurement columns to numeric. Empty cells become NA.
measurements <- c("Dir", "Spd", "Temp", "Pressure", "RH", "PM2.5")
data[measurements] <- lapply(data[measurements], as.numeric)

# 9998/9999 are invalid pressure placeholders in this source file.
data$Pressure[data$Pressure >= 9998] <- NA

# Basic quality report
missing_report <- sort(colSums(is.na(data)), decreasing = TRUE)
print(missing_report)

# City-level PM2.5 summary
city_summary <- aggregate(`PM2.5` ~ Name, data = data, FUN = function(x) {
  c(mean = mean(x, na.rm = TRUE),
    median = median(x, na.rm = TRUE),
    maximum = max(x, na.rm = TRUE))
})
city_summary <- do.call(data.frame, city_summary)
print(city_summary)

# Example screening question from the original exercise
high_pm <- subset(data, Date == "20140101" & HrMn == 1100 & `PM2.5` > 50)
print(high_pm[c("Name", "Date", "HrMn", "PM2.5")])

# Optional chart when running interactively
barplot(city_summary$PM.2.5.mean, names.arg = city_summary$Name, las = 2,
        main = "Average PM2.5 by city", ylab = "PM2.5")
