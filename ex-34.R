# Load the ChickWeight dataset
sink("ex-34.txt")
data("ChickWeight")

# 1. Order the dataset by "weight" in ascending order grouped by "Diet"
ordered_chickweight <- ChickWeight[order(ChickWeight$Diet, ChickWeight$weight), ]

# Extract the last 6 records from the ordered data frame
last_six_records <- tail(ordered_chickweight, 6)
print("Last 6 Records from Ordered Data Frame:")
print(last_six_records)

# 2. Melting function based on "Chick", "Time", "Diet" as ID variables
long_format_data <- data.frame(
  Chick = rep(ChickWeight$Chick, times = 1),
  Time = rep(ChickWeight$Time, times = 1),
  Diet = rep(ChickWeight$Diet, times = 1),
  Variable = rep("Weight", each = nrow(ChickWeight)),
  Value = ChickWeight$weight
)
print("Manually Melted ChickWeight Data:")
print(head(long_format_data))

# 3. Casting functions to display mean and mode of weight grouped by Diet

# (a) Compute the mean weight grouped by Diet
mean_weight_by_diet <- aggregate(weight ~ Diet, data = ChickWeight, FUN = mean)
print("Mean Weight by Diet:")
print(mean_weight_by_diet)

# (b) Function to calculate mode
get_mode <- function(x) {
  unique_x <- unique(x)
  unique_x[which.max(tabulate(match(x, unique_x)))]
}

# Compute the mode of weight grouped by Diet
mode_weight_by_diet <- aggregate(weight ~ Diet, data = ChickWeight, FUN = get_mode)
print("Mode Weight by Diet:")
print(mode_weight_by_diet)

# 4. Visualization

# (a) Boxplot of "weight" grouped by "Diet"
boxplot(weight ~ Diet, data = ChickWeight, 
        main = "Boxplot of Weight Grouped by Diet",
        xlab = "Diet", ylab = "Weight",
        col = c("red", "blue", "green", "purple"))

# (b) Histogram for "weight" where Diet == 1
hist(ChickWeight$weight[ChickWeight$Diet == 1], 
     main = "Histogram of Weight for Diet 1",
     xlab = "Weight", 
     col = "skyblue", 
     border = "black", 
     breaks = 10)

# (c) Scatter plot of "weight" vs "Time" grouped by Diet
plot(ChickWeight$Time, ChickWeight$weight, 
     col = ChickWeight$Diet, 
     pch = 16, 
     main = "Scatter Plot of Weight vs Time Grouped by Diet",
     xlab = "Time", 
     ylab = "Weight")

legend("topleft", legend = unique(ChickWeight$Diet), 
       col = unique(ChickWeight$Diet), pch = 16, 
       title = "Diet Groups")
sink("file=null")̥