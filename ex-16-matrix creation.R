# Create a 5 x 4 matrix and fill by rows
sink("ex-16-matrix creation.txt")
matrix_5x4 <- matrix(1:20, nrow = 5, ncol = 4, byrow = TRUE)
print("5 x 4 matrix filled by rows:")
print(matrix_5x4)

# Create a 3 x 3 matrix with labels and fill by rows
labels_3x3 <- paste("Row", rep(1:3, each = 3), "Col", rep(1:3, times = 3))
matrix_3x3 <- matrix(labels_3x3, nrow = 3, ncol = 3, byrow = TRUE)
print("3 x 3 matrix with labels filled by rows:")
print(matrix_3x3)

# Create a 2 x 2 matrix with labels and fill by columns
labels_2x2 <- paste("Row", rep(1:2, each = 2), "Col", rep(1:2, times = 2))
matrix_2x2 <- matrix(labels_2x2, nrow = 2, ncol = 2, byrow = FALSE)
print("2 x 2 matrix with labels filled by columns:")
print(matrix_2x2)
sink("file=null")̥