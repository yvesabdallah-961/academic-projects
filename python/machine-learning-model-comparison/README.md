# Machine Learning Comparison Lab

A university coursework exercise using generated datasets to practice regression and classification methods.

## Topics covered

- Train/test splitting and feature scaling
- Linear, Ridge, and Lasso regression
- Logistic Regression, Random Forest, and XGBoost
- Confusion matrices, ROC/AUC, and threshold selection
- Cross-validation and parameter search

## Scope and limitations

The data is synthetic, so the exercise demonstrates methods rather than real-world predictive performance. The notebook has no saved execution outputs. It also uses the test split to choose a classification threshold, which makes that result optimistic; the lab should not be read as a clean benchmark.

## Run it

Open model-comparison-lab.ipynb in Google Colab or Jupyter and run the cells from top to bottom. It installs XGBoost in the first setup cell; scikit-learn, pandas, numpy, seaborn, and matplotlib are also used.
