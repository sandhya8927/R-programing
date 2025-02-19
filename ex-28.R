# Create a factor corresponding to height of women data set
sink("ex-28.txt")
# Load the women dataset
data <- women

# Create a factor from the height variable
height_factor <- factor(data$height)

# Print the factor
print(height_factor)

# Display the levels of the factor
print(levels(height_factor))
sink("file=null")̥