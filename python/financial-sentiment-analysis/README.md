# Financial News Sentiment Classification

A natural-language processing project that classifies financial news sentences as **negative**, **neutral**, or **positive**.

## What it demonstrates

- Text cleaning, stopword removal, and lemmatization
- TF-IDF features with word bigrams
- Logistic Regression, SVM, Naive Bayes, and Random Forest baselines
- Bi-LSTM training with an explicit overfitting comparison
- Zero-shot FinBERT evaluation
- Confusion matrices and weighted F1 comparison

## Dataset

The included `financial-news-sentiment.csv` contains 5,842 labeled sentences:

- Neutral: 3,130
- Positive: 1,852
- Negative: 860

The classes are imbalanced, so weighted and per-class F1 scores are more informative than accuracy alone.

## Saved results

On the saved 15% test split (877 sentences), the recorded weighted F1 scores were approximately:

| Model | Weighted F1 |
|---|---:|
| Logistic Regression | 0.69 |
| SVM | 0.68 |
| Naive Bayes | 0.63 |
| Random Forest | 0.65 |
| Bi-LSTM with early stopping | 0.62 |
| FinBERT zero-shot | 0.75 |

These results are from one reproducible split and are included to show the workflow, not to promise production performance.

## Difficulty

Advanced student project. The hardest parts are handling imbalanced labels, keeping the train/test split consistent across models, and comparing a fast classical baseline with deep learning and a finance-specific transformer.

## Run it

Open `financial-sentiment-analysis.ipynb` in Jupyter or Google Colab. The notebook expects `financial-news-sentiment.csv` in the same folder. Bi-LSTM and FinBERT sections require TensorFlow and Transformers and may need a GPU or extra setup.
