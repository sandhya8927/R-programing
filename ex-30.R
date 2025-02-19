# Load the iris dataset
sink("ex-30.txt")
data(iris)

# (i) Dimension, Structure, Summary Statistics, and Standard Deviation
# Dimension
print("Dimension:")
print(dim(iris))

# Structure
print("Structure:")
print(str(iris))

# Summary Statistics
print("Summary Statistics:")
print(summary(iris))

# Standard Deviation of all features
print("Standard Deviation:")
print(sapply(iris[, 1:4], sd))

# (ii) Mean and Standard Deviation of features grouped by species
print("Mean by Species:")
print(aggregate(. ~ Species, data = iris[, 1:5], mean))

print("Standard Deviation by Species:")
print(aggregate(. ~ Species, data = iris[, 1:5], sd))

# (iii) Quantile value of sepal width and length
print("Quantiles of Sepal.Width:")
print(quantile(iris$Sepal.Width))

print("Quantiles of Sepal.Length:")
print(quantile(iris$Sepal.Length))

# (iv) Create new data frame iris1 with Sepal.Length.Cate
iris1 <- iris
iris1$Sepal.Length.Cate <- cut(iris1$Sepal.Length, breaks = quantile(iris1$Sepal.Length), include.lowest = TRUE, labels = c("Q1", "Q2", "Q3", "Q4"))

# (v) Average value of numerical variables by two categorical variables: Species and Sepal.Length.Cate
print("Average value by Species and Sepal.Length.Cate:")
print(aggregate(. ~ Species + Sepal.Length.Cate, data = iris1[, c(1:4, 6, 5)], mean))

# (vi) Average mean value of numerical variables by Species and Sepal.Length.Cate
# This is the same as (v), as we are already calculating the average mean value.

# (vii) Create Pivot Table based on Species and Sepal.Length.Cate using base R
# Get unique combinations of Species and Sepal.Length.Cate
unique_combos <- expand.grid(levels(iris1$Species), levels(iris1$Sepal.Length.Cate), stringsAsFactors = FALSE)
names(unique_combos) <- c("Species", "Sepal.Length.Cate")

# Calculate the mean of each numerical variable for each combination
pivot_data <- data.frame(
  Species = unique_combos$Species,
  Sepal.Length.Cate = unique_combos$Sepal.Length.Cate,
  Sepal.Length = NA,
  Sepal.Width = NA,
  Petal.Length = NA,
  Petal.Width = NA,
  stringsAsFactors = FALSE
)

for (i in 1:nrow(unique_combos)) {
  species <- unique_combos$Species[i]
  sepal_length_cate <- unique_combos$Sepal.Length.Cate[i]
  
  subset_data <- iris1[iris1$Species == species & iris1$Sepal.Length.Cate == sepal_length_cate, ]
  
  if (nrow(subset_data) > 0) {
    pivot_data$Sepal.Length[i] <- mean(subset_data$Sepal.Length, na.rm = TRUE)
    pivot_data$Sepal.Width[i] <- mean(subset_data$Sepal.Width, na.rm = TRUE)
    pivot_data$Petal.Length[i] <- mean(subset_data$Petal.Length, na.rm = TRUE)
    pivot_data$Petal.Width[i] <- mean(subset_data$Petal.Width, na.rm = TRUE)
  }
}

print("Pivot Table based on Species and Sepal.Length.Cate:")
print(pivot_data)
sink("file=null")̥