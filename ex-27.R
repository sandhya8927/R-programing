# Load the built-in airquality dataset
sink("ex-27.txt")
data <- airquality

# Check if it is a data frame
is_data_frame <- is.data.frame(data)
print(paste("Is airquality a data frame? ", is_data_frame))

# Order the entire data frame by the first column (Ozone) and then by the second column (Solar.R)
ordered_data <- data[order(data[,1], data[,2]),]

# Print the ordered data frame
print("Ordered data frame:")
print(head(ordered_data))

# Remove the 'Solar.R' and 'Wind' variables
modified_data <- ordered_data[, !(names(ordered_data) %in% c("Solar.R", "Wind"))]

# Display the modified data frame
print("Data frame after removing 'Solar.R' and 'Wind':")
print(head(modified_data))
sink("file=null")̥
