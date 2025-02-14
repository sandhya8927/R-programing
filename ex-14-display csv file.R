# Define the file path
sink("ex-14-display csv file.txt")
file_path <- "path/to/your/file.csv" # Replace with the actual file path

# Read the .csv file
data <- read.csv(file_path, header = TRUE)

# Display the content
print(data)
sink("file=NULL")