# Install and load the readxl package
install.packages("readxl")
library(readxl)

# Set working directory
setwd("~/Desktop/R files")
# Replace with your folder path if different

# Load the Excel file
data <- read_excel("simple_data.xlsx")

# View the data
print("Data Loaded Successfully!")
print(head(data))  # View the first few rows
print(str(data))   # Check the structure of the data


# Load necessary package
library(ggplot2)

# Create a bar plot for average score by gender
ggplot(data, aes(x = Gender, y = Score, fill = Gender)) +
  stat_summary(fun = "mean", geom = "bar") +
  labs(title = "Average Score by Gender", x = "Gender", y = "Average Score") +
  theme_minimal()

# Scatter plot for Age vs. Score
ggplot(data, aes(x = Age, y = Score, color = Gender)) +
  geom_point(size = 4) +
  labs(title = "Age vs. Score", x = "Age", y = "Score") +
  theme_minimal()

# Histogram for score distribution
ggplot(data, aes(x = Score, fill = Gender)) +
  geom_histogram(binwidth = 5, alpha = 0.7, position = "identity") +
  labs(title = "Distribution of Scores", x = "Score", y = "Count") +
  theme_minimal()

# Box plot for score distribution by gender
ggplot(data, aes(x = Gender, y = Score, fill = Gender)) +
  geom_boxplot() +
  labs(title = "Score Distribution by Gender", x = "Gender", y = "Score") +
  theme_minimal()

# Line plot for Score vs. Age
ggplot(data, aes(x = Age, y = Score, group = 1)) +
  geom_line(color = "blue") +
  geom_point(size = 4, color = "red") +
  labs(title = "Score vs. Age", x = "Age", y = "Score") +
  theme_minimal()

ggsave("bar_plot.png")
ggsave("scatter_plot.png")
ggsave("histogram.png")
ggsave("box_plot.png")


