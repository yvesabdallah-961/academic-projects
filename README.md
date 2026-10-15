# Yves Abdallah — Data Projects

Selected Python, R, and SQL projects from my studies in Big Data, Artificial Intelligence, and Management at Centrale Nantes and Audencia.

## Country Development Clustering

Grouping **211 countries** using eight World Bank indicators. Compares K-means and hierarchical clustering, with attention to missing data and the choice of group count.

![Countries grouped using eight development indicators](python/country-clustering/country-clusters.png)

Each point is a country; colors show K-means groups in a simplified PCA view.

[Open the analysis](python/country-clustering/)

## PCA and Handwritten Digit Recognition

Reducing **64 features to 31** while test accuracy changes from **96.44% to 96.22%** on one fixed train/test split.

![Accuracy and feature-count comparison](python/pca-and-digit-recognition/digits-pca-comparison.png)

Accuracy is shown on a zoomed scale. The project explains the compression trade-off and how to avoid test-data leakage.

[Open the analysis](python/pca-and-digit-recognition/)

## Colon Cancer Classification

An educational **logistic-regression** workflow on gene-expression data. It covers exploratory analysis, standardized preprocessing, ROC/AUC evaluation, coefficient interpretation, and feature selection with reduced models.

![Colon cancer model comparison](python/colon-cancer-classification/model-comparison.png)

The notebook is saved with its original outputs and explains how to upload the source dataset when reproducing it. It is presented as a machine-learning course project, not a clinical tool.

[Open the analysis](python/colon-cancer-classification/)

## Machine Learning Model Comparison

A substantial lab comparing linear and logistic regression, Ridge, Lasso, Random Forest, and XGBoost with cross-validation, ROC/AUC, threshold tuning, and model-selection discussion.

[Open the machine-learning lab](python/machine-learning-model-comparison/)

## Air Pollution Data Cleaning in R

Cleaning and summarizing **18,980 air-monitoring records** from seven Chinese cities. The script handles missing values, invalid pressure placeholders, city-level PM2.5 summaries, and time-based filtering.

[Open the R analysis](r/pollution-analysis/)

## Library Database — SQL Design Sample

A **ten-table schema** covering books, copies, members, and borrowings. Demonstrates primary keys, foreign keys, and many-to-many relationships; includes no sample records or analysis queries.

![Library schema and table relationships](sql/library-schema-preview.png)

[Open the SQL schema](sql/)

## Machine Learning Course Report

[Read the machine-learning course report](reports/machine-learning-course-report.pdf)

## Project Screenshots

[Open the project screenshots](screenshots/)

## Financial News Sentiment Analysis

Financial News Sentiment Analysis compares TF-IDF models, a bidirectional LSTM, and FinBERT using an included 5,842-row financial-news dataset. The README records the saved weighted F1 results and the limits of a single test split.

[Open the sentiment-analysis project](python/financial-sentiment-analysis/)
