# Load the airquality dataset
sink("ex-33.txt")
data("airquality")

# 1. Identify missing values and handle them accordingly
missing_summary <- colSums(is.na(airquality))  # Count NA values per column
total_rows <- nrow(airquality)  # Total number of rows

print("Missing Values in Each Column:")
print(missing_summary)

# Function to handle missing values
handle_missing_values <- function(data, threshold = 0.1) {
  for (col in names(data)) {
    missing_percentage <- sum(is.na(data[[col]])) / total_rows
    if (missing_percentage < threshold) {
      data <- data[!is.na(data[[col]]), ]  # Drop rows with missing values
    } else {
      data[[col]][is.na(data[[col]])] <- mean(data[[col]], na.rm = TRUE)  # Replace with mean
    }
  }
  return(data)
}

# Apply function to handle missing values
cleaned_airquality <- handle_missing_values(airquality)

print("Dataset after handling missing values:")
print(head(cleaned_airquality))

# 2. Apply Linear Regression using Least Squares Method on "Ozone" and "Solar.R"
lm_model <- lm(Ozone ~ Solar.R, data = cleaned_airquality)  # Linear model

# Display model summary
print("Linear Regression Model Summary:")
print(summary(lm_model))

# 3. Scatter plot with regression line
plot(cleaned_airquality$Solar.R, cleaned_airquality$Ozone, 
     main = "Scatter Plot of Ozone vs Solar.R", 
     xlab = "Solar Radiation (Solar.R)", 
     ylab = "Ozone Concentration (Ozone)", 
     col = "blue", pch = 16)

# Add regression line
abline(lm_model, col = "red", lwd = 2)
sink("file=null")̥
