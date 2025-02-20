# Load the airquality dataset
data("airquality")

# Display the first few rows of the dataset
head(airquality)

# 1. Compute the mean temperature without using built-in function
mean_temperature <- sum(airquality$Temp, na.rm = TRUE) / length(na.omit(airquality$Temp))
print(paste("Mean Temperature:", mean_temperature))

# 2. Extract the first five rows from airquality
first_five_rows <- airquality[1:5, ]
print("First Five Rows:")
print(first_five_rows)

# 3. Extract all columns except Temp and Wind
airquality_subset <- airquality[, !(names(airquality) %in% c("Temp", "Wind"))]
print("Subset of airquality without Temp and Wind:")
print(head(airquality_subset))

# 4. Find the coldest day during the period
coldest_day_index <- which.min(airquality$Temp)
coldest_day <- airquality[coldest_day_index, ]
print("Coldest Day:")
print(coldest_day)

# 5(i). Get summary statistics of airquality dataset
summary_stats <- summary(airquality)
print("Summary Statistics of Air Quality Dataset:")
print(summary_stats)

# 5(ii). Convert airquality dataset to long format manually (Melt Data)
long_format_data <- data.frame(
  Month = rep(airquality$Month, times = ncol(airquality) - 2),
  Day = rep(airquality$Day, times = ncol(airquality) - 2),
  Variable = rep(names(airquality)[-(5:6)], each = nrow(airquality)),
  Value = as.vector(as.matrix(airquality[, -(5:6)]))
)
print("Manually Melted Air Quality Data (Long Format):")
print(head(long_format_data))

# 5(iii). Convert airquality data into long format with Month & Day as ID Variables
long_format_data_with_id <- data.frame(
  Month = rep(airquality$Month, times = ncol(airquality) - 2),
  Day = rep(airquality$Day, times = ncol(airquality) - 2),
  Variable = rep(names(airquality)[-(5:6)], each = nrow(airquality)),
  Value = as.vector(as.matrix(airquality[, -(5:6)]))
)
print("Long Format Data with Month and Day as ID Variables:")
print(head(long_format_data_with_id))

# 5(iv). Reshape data to wide format (Casting manually)
wide_format_data <- reshape(long_format_data_with_id, 
                            timevar = "Variable", 
                            idvar = c("Month", "Day"), 
                            direction = "wide")
print("Manually Casted Data (Reshaped by Month and Day):")
print(head(wide_format_data))

# 5(v). Compute the average of Ozone, Solar.R, Wind, and Temp per month manually
monthly_avg <- aggregate(airquality[, c("Ozone", "Solar.R", "Wind", "Temp")], 
                         by = list(Month = airquality$Month), 
                         FUN = mean, na.rm = TRUE)
print("Monthly Averages of Ozone, Solar.R, Wind, and Temp:")
print(monthly_avg)
