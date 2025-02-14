# Create three vectors a, b, c with 3 integers each
sink("ex-12-vectors matrix.txt")
a <- c(1, 2, 3)
b <- c(4, 5, 6)
c <- c(7, 8, 9)

# Combine the three vectors to form a 3×3 matrix
matrix_3x3 <- cbind(a, b, c)

# Print the content of the matrix
print(matrix_3x3)
sink("file=NULL")̥