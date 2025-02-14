# Find unique elements of a given string
sink("ex-11-unique elements.txt")
unique_elements_string <- function(input_string) {
  unique_chars <- unique(strsplit(input_string, NULL)[[1]])
  return(unique_chars)
}

# Example string
my_string <- "programming"
unique_chars <- unique_elements_string(my_string)
print("Unique elements of the string:")
print(unique_chars)

# Find unique numbers of a given vector
unique_numbers_vector <- function(input_vector) {
  unique_numbers <- unique(input_vector)
  return(unique_numbers)
}

# Example vector
my_vector <- c(1, 2, 2, 3, 4, 4, 5, 5, 5, 6)
unique_numbers <- unique_numbers_vector(my_vector)
print("Unique numbers of the vector:")
print(unique_numbers)
sink("file=NULL")̥