# Load necessary dataset
sink("file=null")
data(iris)

# Convert Species to a binary classification (for logistic regression)
iris$Species <- as.factor(ifelse(iris$Species == "setosa", 1, 0))

# Split the dataset into 80% training and 20% testing without caret
set.seed(123)  # Set seed for reproducibility
sample_size <- floor(0.8 * nrow(iris))
train_indices <- sample(seq_len(nrow(iris)), size = sample_size, replace = FALSE)

trainData <- iris[train_indices, ]
testData <- iris[-train_indices, ]

# Train logistic regression model (Ensuring only numerical features)
model <- glm(Species ~ Petal.Length + Petal.Width, data = trainData, family = binomial)

# Predict probabilities on test data
pred_prob <- predict(model, newdata = testData, type = "response")

# Convert probabilities to binary classes (Threshold = 0.5)
pred_class <- ifelse(pred_prob > 0.5, 1, 0)

# Convert predictions and actual values into factors (fixing warning issues)
pred_class <- factor(pred_class, levels = c(0, 1))
test_actual <- factor(testData$Species, levels = c(0, 1))

# Create and display confusion matrix
conf_matrix <- table(Predicted = pred_class, Actual = test_actual)
print("Confusion Matrix:")
print(conf_matrix)

# Define the vector for statistical computations
values <- c(90, 50, 70, 80, 70, 60, 20, 30, 80, 90, 20)

# Compute mean
mean_value <- mean(values)
print(paste("Mean:", mean_value))

# Compute median
median_value <- median(values)
print(paste("Median:", median_value))

# Compute mode function (handling multiple modes)
mode_function <- function(x) {
  uniq_vals <- unique(x)
  tabulated <- tabulate(match(x, uniq_vals))
  uniq_vals[tabulated == max(tabulated)]
}

mode_value <- mode_function(values)
print(paste("Mode:", paste(mode_value, collapse = ", ")))

# Sort unique values in ascending order
sorted_values <- sort(unique(values))

# Find 2nd highest and 3rd lowest value safely
if (length(sorted_values) >= 2) {
  second_highest <- sorted_values[length(sorted_values) - 1]
} else {
  second_highest <- NA
}

if (length(sorted_values) >= 3) {
  third_lowest <- sorted_values[3]
} else {
  third_lowest <- NA
}

print(paste("Second Highest:", second_highest))
print(paste("Third Lowest:", third_lowest))
sink("file=null")̥