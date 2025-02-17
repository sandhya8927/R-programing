# Define the vector of values for the array
sink("ex-23-array.txt")
values <- 1:24

# Define the dimensions of the array
dimensions <- c(3, 4, 2)

# Create the array using the specified values and dimensions
my_array <- array(values, dim = dimensions)

# Print the content of the array
print("Content of the array:")
print(my_array)
sink("file=null")̥