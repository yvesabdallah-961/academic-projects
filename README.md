# Yves Abdallah — Data Science & AI Portfolio

Selected coursework projects from my dual-major studies in Big Data, AI, and Management at Centrale Nantes and Audencia Business School.

[LinkedIn](https://www.linkedin.com/in/yves-abdallah/) · [GitHub profile](https://github.com/yvesabdallah-961)

The projects show practical work with Python, R, SQL, machine learning, natural language processing, clustering, dimensionality reduction, and data cleaning.

## How to use this portfolio

Each project page gives a short overview, explains the methods and results, and notes the main limitations. Open the linked notebook or script for the work itself.

## Main projects

### 1. Financial News Sentiment Classification

<small><strong>NLP coursework project.</strong> I compared text-classification approaches on 5,842 labeled financial sentences, including TF-IDF models, a Bi-LSTM, and FinBERT.</small>

[Project page — dataset, methods, limitations, and notebook](python/financial-sentiment-analysis/)

### 2. Country Development Clustering

<small><strong>Real-data clustering project.</strong> I used eight World Bank indicators for 211 countries and compared K-means with hierarchical clustering.</small>

![Country groups based on development indicators](python/country-clustering/country-clusters.png)

[Project page — data source, method, results, and limitations](python/country-clustering/)

### 3. PCA and Handwritten Digit Recognition

<small><strong>Dimensionality-reduction project.</strong> I tested whether 64 pixel features could be reduced to 31 while keeping similar recognition accuracy.</small>

![Accuracy comparison before and after PCA](python/pca-and-digit-recognition/digits-pca-comparison.png)

[Project page — method, results, charts, and notebook](python/pca-and-digit-recognition/)

### 4. Air Pollution Data Cleaning in R

<small><strong>R data-quality exercise.</strong> I cleaned 18,980 air-monitoring records from seven Chinese cities and summarized PM2.5 measurements.</small>

[Project page — cleaning steps, data, script, and chart](r/pollution-analysis/)

### 5. Library Database Design

<small><strong>Introductory SQL exercise.</strong> I designed a PostgreSQL schema with ten related tables for a library. It is a small schema example and has no sample data or analysis queries.</small>

![Library database relationships](screenshots/library-database-schema.png)

[Project page — schema, diagram, and setup notes](sql/)

## Additional coursework

- [Machine learning comparison lab](python/machine-learning-model-comparison/) — a course exercise using generated datasets to practice regression and classification. It has no saved execution outputs and uses the test split while choosing a threshold, so treat it as a learning exercise rather than a benchmark.

## Visuals

- [Project screenshots and charts](screenshots/) — visual examples from the country clustering, PCA, and SQL projects.
