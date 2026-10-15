# Financial News Sentiment Analysis

An NLP study project for classifying financial news sentences by sentiment.

## What it covers

- Text cleaning, tokenization, stopword removal, and lemmatization
- TF-IDF features with word bigrams
- Classical models: Logistic Regression, SVM, Naive Bayes, and Random Forest
- A bidirectional LSTM with an example of early stopping to reduce overfitting
- A FinBERT transformer baseline for finance-specific language
- A final model-comparison section based on weighted F1 score

## Difficulty

Advanced student work. The project combines NLP preprocessing, several machine-learning baselines, neural-network training, and a transformer model. The main challenge is making the models comparable while keeping the text pipeline and evaluation consistent.

## Data and reproduction

The original course dataset is not included in this repository. To run the notebook, provide a CSV named `data.csv` or `archive/data.csv` with these columns:

- `Sentence`: the financial news text
- `Sentiment`: the target label

The notebook also offers a Colab upload prompt when the file is not found. It clears old runtime output so results are generated from the dataset you provide.

## Portfolio note

This is a reproducible study notebook and a good demonstration of NLP workflow design. Reported scores should be generated from the supplied dataset rather than assumed in advance; the notebook therefore does not present unverified performance claims.
