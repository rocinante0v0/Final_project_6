# Makefile for Diabetes Analysis

# Variables
RMD_FILE=Report.Rmd
HTML_FILE=Report.html
RAW_DATA=Raw_Data/diabetes_012_health_indicators_BRFSS2015.csv
PLOT_FILE=Output/bmi_plot.png
MAKE_PLOT_SCRIPT=Code/01_make_plot.R
RENDER_REPORT_SCRIPT=Code/02_render_report.R

# Default target
all: $(HTML_FILE)

# Rule to generate the plot
$(PLOT_FILE): $(MAKE_PLOT_SCRIPT) $(RAW_DATA)
	Rscript $(MAKE_PLOT_SCRIPT)

# Rule to render the report
$(HTML_FILE): $(RMD_FILE) $(PLOT_FILE) $(RENDER_REPORT_SCRIPT)
	Rscript $(RENDER_REPORT_SCRIPT)

# Clean up generated files
clean:
	rm -f $(PLOT_FILE) $(HTML_FILE)

# Phony targets
.PHONY: all clean

