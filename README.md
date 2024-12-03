# Diabetes Analysis Project

## Overview

This project analyzes the 2015 Behavioral Risk Factor Surveillance System (BRFSS) dataset to explore the relationship between health indicators (e.g., BMI) and diabetes status. The analysis includes summarizing the dataset and visualizing the relationship between BMI and diabetes status through a boxplot.

---

## File Structure

### **Raw_Data/**
- Contains the raw dataset used for the analysis.
  - `diabetes_012_health_indicators_BRFSS2015.csv`: Raw data file.

### **Code/**
- Contains the R scripts used in the workflow.
  - `01_make_plot.R`: Generates a boxplot of BMI by diabetes status.
  - `02_render_report.R`: Renders the final report (`Report.html`) from the R Markdown file.

### **Output/**
- Stores the output files generated during the workflow.
  - `bmi_plot.png`: The boxplot visualizing BMI distribution by diabetes status.

### **Report.Rmd**
- The R Markdown file that summarizes the dataset, includes the generated plot, and provides insights into the relationship between BMI and diabetes status.

### **Makefile**
- Automates the workflow, including data visualization and report generation.

### **Report.html**
- The final HTML report generated from the R Markdown file.

---

## Prerequisites

To run this project, ensure the following tools and libraries are installed:

### **Required Tools**
- [R](https://www.r-project.org/)
- [RStudio](https://posit.co/products/open-source/rstudio/)

### **Required R Packages**
- `ggplot2`
- `dplyr`
- `here`
- `rmarkdown`
- `knitr`

Install the packages using the following command in R:
```R
install.packages(c("ggplot2", "dplyr", "here", "rmarkdown", "knitr"))

# Final_project_6

## How to Synchronize the R Package Environment

This project uses the `renv` package to manage its R package dependencies. To ensure you have the correct package versions, follow these steps:

1. Clone the repository:
   ```bash
   git clone https://github.com/rocinante0v0/Final_project_6.git
   cd Final_project_6
Restore the R package environment:
2. make install
This will:

Install the renv package if it is not already installed.
Restore all project dependencies based on the renv.lock file.
Open the project in R and start your analysis.