# 01_make_plot.R

here::i_am("Code/01_make_plot.R")

# Load necessary libraries
library(here)
library(tidyverse)
library(ggplot2)

# Define the path to the raw data
path_to_data <- here::here("Data", "diabetes_012_health_indicators_BRFSS2015.csv")

# Read the dataset
data <- read.csv(path_to_data)

# Create a boxplot of BMI by diabetes status
p <- ggplot(data, aes(x = as.factor(Diabetes_012), y = BMI, fill = as.factor(Diabetes_012))) +
  geom_boxplot() +
  labs(
    title = "BMI Distribution by Diabetes Status",
    x = "Diabetes Status (0: No Diabetes, 1: Prediabetes, 2: Diabetes)",
    y = "BMI"
  ) +
  theme_minimal() +
  scale_fill_discrete(name = "Diabetes Status")

# Save the plot to the `Output` folder
output_path <- here::here("Output", "bmi_plot.png")
ggsave(output_path, plot = p, width = 8, height = 5)
