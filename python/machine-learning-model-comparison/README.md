# Machine Learning Model Comparison Lab

A substantial supervised-learning lab covering both regression and classification on reproducible synthetic datasets.

## What it demonstrates

- Train/test splitting and feature scaling
- Linear Regression with RMSE, MAE, and R²
- Ridge and Lasso regularization with GridSearchCV
- Logistic Regression, confusion matrices, ROC/AUC, and threshold tuning
- Random Forest and XGBoost classification
- Hyperparameter search with RandomizedSearchCV
- Model comparison and discussion of interpretability versus performance

## Difficulty

Advanced student coursework. The main challenge is keeping evaluation fair across several model families and understanding how regularization, decision thresholds, and boosting change the results.

## Data and limits

The notebook creates synthetic datasets with fixed random seeds so the workflow is reproducible without distributing a third-party dataset. Because the data is synthetic, the results demonstrate methods rather than real-world predictive performance.

## Run it

Open `model-comparison-lab.ipynb` in Google Colab or Jupyter and run from top to bottom. XGBoost, scikit-learn, pandas, and matplotlib are required.
