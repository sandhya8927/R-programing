# Define the vector of values
sink("ex-17-array.txt")
values <- 1:24

# Define the vector of dimensions
dimensions <- c(3, 4, 2)

# Create the array
my_array <- array(values, dim = dimensions)

# Provide names for each dimension
dimnames(my_array) <- list(
  Dimension1 = paste("D1", 1:3, sep = ""),
  Dimension2 = paste("D2", 1:4, sep = ""),
  Dimension3 = paste("D3", 1:2, sep = "")
)

# Print the array with dimension names
print("Array with dimension names:")
print(my_array)
sink("file=null")̥