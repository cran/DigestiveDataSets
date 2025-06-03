# DigestiveDataSets

The `DigestiveDataSets` package offers a comprehensive and curated collection of datasets focused on **the digestive system, including the stomach, intestines, liver, pancreas, and related disorders**. 
This package encompasses a variety of data types such as clinical trials, observational studies, experimental datasets, cohort data, 
and case series, providing broad coverage of gastrointestinal diseases.

## Installation

You can install the `DigestiveDataSets` package from CRAN with the following R function:

```R

install.packages("DigestiveDataSets")

```

## Load the Package

```R

library(DigestiveDataSets)

```

## Dataset Suffixes

Each dataset in the `DigestiveDataSets` package uses a `suffix` to denote the type of R object:

- `_df`: data frame

- `_tbl_df`: tibble

- `_ts`: time series


## Example Datasets

Below are selected example datasets included in the `DigestiveDataSets` package:

- `digestive_cancer_survival_df`: Digestive Cancer Survival Times.

- `campylobacter_infections_ts`: Campylobacter Infections Time Series.

- `cholera_deaths_1849_tbl_df`: Cholera Daily Deaths in England, 1849.

## Example Code:

```R

# Load the package

library(DigestiveDataSets)

# List all datasets in the package

view_datasets_digestive()

# Load dataset

data(digestive_cancer_survival_df)

# Preview the dataset

head(digestive_cancer_survival_df)

# Open in Viewer

View(digestive_cancer_survival_df)

```

