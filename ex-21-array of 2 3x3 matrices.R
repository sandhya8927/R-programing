# Define the first vector
sink("'ex-21-array of 2 3x3 matrices.txt")
vector1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)

# Define the second vector
vector2 <- c(10, 11, 12, 13, 14, 15, 16, 17, 18)

# Combine the two vectors
combined_vector <- c(vector1, vector2)

# Create the array with the specified dimensions
my_array <- array(combined_vector, dim = c(3, 3, 2))

# Print the second row of the second matrix
print("Second row of the second matrix:")
print(my_array[2, , 2])

# Print the element in the 3rd row and 3rd column of the 1st matrix
print("Element in the 3rd row and 3rd column of the 1st matrix:")
print(my_array[3, 3, 1])
sink("file=null")̥