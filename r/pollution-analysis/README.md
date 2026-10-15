# Air Pollution Data Cleaning in R

A small R data-quality and exploratory-analysis project using air-monitoring observations from seven Chinese cities.

## What it demonstrates

- Reading and validating a CSV file
- Converting measurement fields to numeric values
- Treating invalid pressure placeholders as missing values
- Reporting missing data
- Computing city-level PM2.5 summaries
- Filtering high-pollution observations by date and time

## Dataset

The file contains 18,980 observations for Shijiazhuang, Baoding, Chengde, Tangshan, Tianjin, Xingtai, and Zhangjiakou. The source has missing measurements, so the script reports them instead of silently hiding them.

## Difficulty

Intermediate student work. The main challenge is data quality: several columns contain missing values and pressure sentinel values that must be cleaned before calculating summaries.

## Run it

Open `pollution-analysis.R` in RStudio with `pollution.csv` in the same folder.
