# Define the first vector
sink("ex-18-array 3x3x2.txt")
vector1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)

# Define the second vector
vector2 <- c(10, 11, 12, 13, 14, 15, 16, 17, 18)

# Combine the two vectors
combined_vector <- c(vector1, vector2)

# Create the array with the specified dimensions
my_array <- array(combined_vector, dim = c(3, 3, 2))

# Print the array
print("3 x 3 x 2 array:")
print(my_array)
sink("file=null")̥