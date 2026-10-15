# Country Development Clustering

[Open the notebook](country-clustering.ipynb).

This analysis groups countries using eight World Bank indicators: birth rate, fertility, literacy, female secondary enrollment, GDP per capita, life expectancy, internet usage, and urban population.

The workflow fetches the latest available observations within 2010–2023, filters countries with fewer than six available indicators, imputes missing values with medians, standardizes the features, and compares K-means with Ward hierarchical clustering. PCA provides a two-dimensional view.

![Country clusters from the executed notebook](country-clusters.png)

## Results and interpretation

The verified run used 211 countries after filtering. With four clusters, the silhouette scores were 0.272 for K-means and 0.240 for hierarchical clustering. Two clusters scored higher in the tested range, so the four-group solution is an exploratory choice for more detailed profiles, not an optimal or definitive classification.

Observation years differ between indicators and countries. Missing-data imputation and the choice of features affect the groups. The World Bank may revise historical data, so later API runs can differ slightly.

## Optional: reproduce the analysis

Install the packages in [requirements.txt](../requirements.txt) and run all cells in order. Internet access is required. All 30 code cells were rerun successfully when this version was checked.

Data source: [World Bank Indicators API](https://api.worldbank.org/v2/country/all/indicator/NY.GDP.PCAP.CD?format=json&date=2010:2023&per_page=20000).

![Wealth, health, and demographic relationships](country-wealth-health.png)

## What this means in everyday terms

The question is: which countries look similar when we compare several development indicators at once? A country can have a high income but a different demographic profile from another high-income country. Looking at several measures together helps reveal those differences.

### How the analysis works

1. **Collect the data.** The notebook requests each indicator from the World Bank and joins the results using country codes.
2. **Deal with gaps.** Countries with too little information are removed. Remaining missing values are filled with the median for that indicator. This keeps more countries in the analysis, but those filled values are estimates.
3. **Make the measures comparable.** GDP is measured in dollars while other indicators use percentages, years, or rates. Standardization prevents the larger numerical scale of GDP from dominating the distance calculations.
4. **Create groups in two ways.** K-means places countries around group centers. Hierarchical clustering gradually joins similar countries into a tree of groups.
5. **Check the grouping.** The silhouette score measures how well separated the groups are. PCA compresses the eight indicators into two axes for a chart; the chart is a simplified view.

### Why choosing the number of groups is difficult

**Difficulty: intermediate student project.** The main challenge is making sensible choices about missing data, scaling, and the number of groups. There is no correct label to compare against, as there would be in a supervised prediction problem. Four groups make the profiles more detailed, but the score chart below shows stronger separation with two. That trade-off needs to be acknowledged when interpreting the result.

![K-means comparison across different cluster counts](cluster-count-comparison.png)

**How to read this chart:** the left panel shows within-group variation, which usually falls as more groups are added. The right panel shows separation quality; higher silhouette values are better. The two panels answer different questions, so a lower curve on the left alone does not prove that a choice is better.

![Hierarchical clustering tree](hierarchical-tree.png)

**How to read this chart:** branches join groups of countries. Taller joins indicate larger differences between the groups being merged. This truncated view shows the broad structure without displaying every country label.

### What the project demonstrates

API data collection, joining tables, missing-value handling, feature scaling, exploratory charts, and comparison of two unsupervised methods. The result is a descriptive analysis; it does not establish causes or rank countries by overall quality of life.
