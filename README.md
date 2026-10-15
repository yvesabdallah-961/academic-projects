# Yves Abdallah — Data Projects

I am a third-year student in the Centrale Nantes–Audencia program in Big Data, Artificial Intelligence, and Management. This portfolio brings together selected student projects in data analysis, machine learning, and database design.

**Browse the results below.** Each project has a visual walkthrough explaining the question, the method, the main challenge, and the limits of the result. The notebooks and SQL file are available alongside the explanations.

## Country Development Clustering

**Question:** Which countries have similar profiles across demographic, economic, and social indicators?

The analysis combines eight World Bank indicators, handles missing data, and compares K-means with hierarchical clustering. The checked run retained 211 countries. A key challenge is deciding how many groups are useful: four groups provide more detail, while two receive a higher separation score.

![Countries grouped using eight development indicators](python/country-clustering/country-clusters.png)

Each point represents a country. The axes are a two-dimensional PCA summary of the eight scaled indicators, and colors show the K-means groups. The picture is a simplified view rather than a ranking of countries.

[See the full explanation, results, and charts →](python/country-clustering/)

## PCA and Handwritten Digit Recognition

**Question:** Can a digit classifier use fewer features without losing much accuracy?

A k-nearest-neighbors classifier is compared before and after PCA on the same held-out test set. The representation shrinks from 64 features to 31, while test accuracy changes from 96.44% to 96.22%. The main challenge is keeping the comparison fair and fitting preprocessing only on the training data.

![Accuracy and feature-count comparison](python/pca-and-digit-recognition/digits-pca-comparison.png)

The left panel shows test accuracy on a zoomed vertical scale; the right panel shows the number of features. These results describe one fixed split of scikit-learn's digits dataset.

[See the full explanation, digit images, and results →](python/pca-and-digit-recognition/)

## Library Database — SQL Design Sample

**Question:** How can a library represent books, physical copies, members, and borrowing records in related tables?

This introductory SQL sample defines ten tables with primary and foreign keys. Its main design challenge is representing relationships such as several authors per book and several physical copies of one title. It demonstrates schema design; it does not yet include an application, sample records, or analysis queries.

![Library schema and table relationships](sql/library-schema-preview.png)

The diagram follows the relationships in the SQL file. Link tables connect books with authors, scriptwriters, and keywords, while borrowings connect members to individual copies.

[See the schema explanation and SQL file →](sql/)
