# Create a vector
my_vector <- c(1, 2, 3, 4, 5)

# Create a matrix
my_matrix <- matrix(1:9, nrow = 3, ncol = 3)

# Define a function
sink("ex-19-list of elements.txt")
my_function <- function(x) {
  return(x^2)
}

# Create a list with the vector, matrix, and function
my_list <- list(
  vector_element = my_vector,
  matrix_element = my_matrix,
  function_element = my_function
)

# Print the content of the list
print("Content of the list:")
print(my_list)

# Demonstrate the function within the list
print("Result of applying the function to 2:")
print(my_list$function_element(2))
sink("file=null")̥
