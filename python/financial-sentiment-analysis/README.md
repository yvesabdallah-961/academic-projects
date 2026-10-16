# Financial News Sentiment Classification

An NLP coursework project that classifies financial sentences as **negative**, **neutral**, or **positive**.

## Methods

- Clean and lemmatize text
- Build TF-IDF features with word bigrams
- Compare Logistic Regression, SVM, Naive Bayes, and Random Forest
- Explore a Bi-LSTM and pretrained FinBERT
- Review weighted F1 scores and confusion matrices

## Dataset

The included CSV contains 5,842 labeled sentences. It comes from [Financial Sentiment Analysis on Kaggle](https://www.kaggle.com/datasets/sbhatti/financial-sentiment-analysis), which describes its data as a combination of FiQA and Financial PhraseBank. The Kaggle page lists the dataset as CC0.

The labels are imbalanced, so weighted and per-class F1 scores are more useful than accuracy alone.

## Results and limitations

The notebook contains scores from one train/validation/test split. It selects the best traditional model using test-set scores, so the reported comparison is exploratory and may be optimistic; it is not a clean final benchmark. The Bi-LSTM and FinBERT sections also require additional libraries and may run slowly without suitable hardware.

## Run it

Open financial-sentiment-analysis.ipynb in Jupyter or Google Colab. Keep financial-news-sentiment.csv in the same folder. The notebook downloads NLTK resources and the pretrained FinBERT model when those sections run.
