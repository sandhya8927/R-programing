# Set a seed for reproducibility
sink("ex-29.txt")
set.seed(123)

# Take a random sample from LETTERS
random_sample <- sample(LETTERS, 30, replace = TRUE)

# Create a factor from the random sample
factor_sample <- factor(random_sample)

# Extract the first five levels of the factor
first_five_levels <- levels(factor_sample)[1:5]

# Print the first five levels
print(first_five_levels)

# Print the factor
print(factor_sample)
sink("file=null")̥