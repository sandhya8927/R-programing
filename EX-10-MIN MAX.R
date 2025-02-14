# Create a vector
sink("ex-10-min max.txt")
my_vector <- c(5, 3, 8, 6, 2, 7, 4, 1, 9, 10) # You can change the values

# Find the maximum value
max_value <- max(my_vector)
print(paste("Maximum value:", max_value))

# Find the minimum value
min_value <- min(my_vector)
print(paste("Minimum value:", min_value))
sink("file=NULL")̥