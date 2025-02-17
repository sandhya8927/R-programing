# Existing data frame
sink("ex-26-dataframe.txt")
exam_data <- data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)

# New data to add
new_exam_data <- data.frame(
  name = c('Robert', 'Sophia'),
  score = c(10.5, 9),
  attempts = c(1, 3),
  qualify = c('yes', 'no')
)

# Add new rows to the existing data frame
exam_data <- rbind(exam_data, new_exam_data)
print("Data frame after adding new rows:")
print(exam_data)
# Sort by name and score
sorted_exam_data <- exam_data[order(exam_data$name, exam_data$score), ]
print("Data frame sorted by name and score:")
print(sorted_exam_data)
# Save the data frame to a CSV file
write.csv(exam_data, "exam_data.csv", row.names = FALSE)

# Read the data frame from the CSV file
read_exam_data <- read.csv("exam_data.csv")

# Print the content of the data frame from the file
print("Content of the data frame from the file:")
print(read_exam_data)
sink("file=null")̥