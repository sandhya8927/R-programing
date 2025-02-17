# Draw an empty plot
sink("ex-20-empty plot.txt")
plot(1, type = "n", xlab = "X-Axis", ylab = "Y-Axis", main = "Empty Plot")

# Draw an empty plot with specified axis limits
plot(1, type = "n", xlab = "X-Axis", ylab = "Y-Axis", main = "Empty Plot with Axis Limits",
     xlim = c(0, 10), ylim = c(0, 10))
sink("file=null")̥