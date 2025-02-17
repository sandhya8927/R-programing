# Define the first array
sink("ex-22-combination of 3 arrays.txt")
array1 <- array(1:9, dim = c(3, 3))

# Define the second array
array2 <- array(10:18, dim = c(3, 3))

# Define the third array
array3 <- array(19:27, dim = c(3, 3))

# Combine the first rows of each array
combined_rows <- rbind(array1[1, ], array2[1, ], array3[1, ])

# Print the combined rows
print("Combined rows of the three arrays:")
print(combined_rows)
sink("file=null")̥