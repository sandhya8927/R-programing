# Define the sequence of even integers greater than 50
sink("ex-24- 2 dimensional matrix.txt")
even_integers <- seq(from = 52, by = 2, length.out = 15)

# Create a 5x3 array using the even integers
my_array <- array(even_integers, dim = c(5, 3))

# Print the content of the array
print("5x3 array of even integers greater than 50:")
print(my_array)
sink("file=null")̥