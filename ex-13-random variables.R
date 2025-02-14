# Set seed for reproducibility
sink("ex-13-random variables.txt")
set.seed(123)

# Create a list of random numbers in normal distribution
random_numbers <- rnorm(100, mean = 0, sd = 1) # You can change the mean, sd, and sample size

# Round the numbers to a specified number of decimal places
rounded_numbers <- round(random_numbers, 1)

# Count the occurrences of each value
occurrences <- table(rounded_numbers)
print(occurrences)
sink("file=NULL")̥