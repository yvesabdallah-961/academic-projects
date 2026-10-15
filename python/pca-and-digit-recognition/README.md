# PCA and Handwritten Digit Recognition

[Notebook](pca-and-digit-recognition.ipynb)

Can digit images be represented with fewer features while keeping similar classification accuracy?

![Examples of handwritten digits](digit-examples.png)

The scikit-learn digits dataset contains 8 × 8 pixel images, giving 64 features per image.

## Method and main challenge

Compare a five-neighbor classifier before and after PCA, using a fixed, stratified 75% training / 25% test split. PCA keeps enough components to retain at least 90% of the training variance.

The challenge is a fair comparison: both models use the same test images, and scaling and PCA are fitted only on training data. This prevents test information from influencing training.

## Results

![Accuracy and feature-count comparison](digits-pca-comparison.png)

| Model | Features | Test accuracy |
| --- | ---: | ---: |
| k-NN | 64 | 96.44% |
| k-NN after PCA | 31 | 96.22% |

The accuracy chart uses a zoomed scale. PCA roughly halves the feature count with a small accuracy change on this split.

![PCA explained variance](pca-variance.png)

The 31 components retain **90.25% of training variance**. The right panel adds each component's contribution; retained variance is different from prediction accuracy.

![Confusion matrix after PCA](digit-confusion-matrix.png)

Rows show actual digits and columns show predictions. Diagonal counts are correct; other cells show mistakes.

![Digits reconstructed from PCA](digit-reconstruction.png)

The bottom row reconstructs standardized images from the compressed representation. Overall shapes remain, but some detail is lost.

## Limits

These results cover one split of a small dataset. They do not establish equal performance on other splits or real-world handwriting.

**To reproduce:** install [requirements.txt](../requirements.txt) and run the notebook in order. The dataset is built into scikit-learn.
