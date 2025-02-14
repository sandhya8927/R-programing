# Create three vectors: numeric data, character data, and logical data
sink("ex-15-creating 3 vectors.txt")
numeric_data <- c(1.5, 2.3, 3.7, 4.1, 5.0)
character_data <- c("apple", "banana", "cherry", "date", "elderberry")
logical_data <- c(TRUE, FALSE, TRUE, TRUE, FALSE)

# Display the content of the vectors
print("Numeric data:")
print(numeric_data)
print("Character data:")
print(character_data)
print("Logical data:")
print(logical_data)

# Display the type of each vector
print("Type of numeric data:")
print(typeof(numeric_data))
print("Type of character data:")
print(typeof(character_data))
print("Type of logical data:")
print(typeof(logical_data))
sink("file=NULL")̥