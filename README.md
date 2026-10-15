# Yves Abdallah — Data Projects

Selected Python and SQL projects from my studies in Big Data, Artificial Intelligence, and Management at Centrale Nantes and Audencia.

## Country Development Clustering

Grouping **211 countries** using eight World Bank indicators. Compares K-means and hierarchical clustering, with attention to missing data and the choice of group count.

![Countries grouped using eight development indicators](python/country-clustering/country-clusters.png)

Each point is a country; colors show K-means groups in a simplified PCA view.

[Explore the analysis →](python/country-clustering/)

## PCA and Handwritten Digit Recognition

Reducing **64 features to 31** while test accuracy changes from **96.44% to 96.22%** on one fixed train/test split.

![Accuracy and feature-count comparison](python/pca-and-digit-recognition/digits-pca-comparison.png)

Accuracy is shown on a zoomed scale. The project explains the compression trade-off and how to avoid test-data leakage.

[Explore the analysis →](python/pca-and-digit-recognition/)

## Library Database — SQL Design Sample

A **ten-table schema** covering books, copies, members, and borrowings. Demonstrates primary keys, foreign keys, and many-to-many relationships; includes no sample records or analysis queries.

![Library schema and table relationships](sql/library-schema-preview.png)

[Explore the schema →](sql/)
