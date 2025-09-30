# NYC Yellow Taxi Trip Data Analysis with Dask

This project involves analyzing and modeling NYC Yellow Taxi trip data using Dask. The dataset is sourced from [Kaggle](https://www.kaggle.com/datasets/elemento/nyc-yellow-taxi-trip-data) and includes trip data for January 2015 and January 2016. The main objectives of this project are as follows:

## Objectives
1. **Data Loading and Preprocessing**:
  - Load `yellow_tripdata_201501.csv` and `yellow_tripdata_201601.csv` into Dask and concatenate them.
  - Perform exploratory data analysis (EDA) to understand the dataset.
  - Address key questions:
    - Which columns are relevant for analysis?
    - How to handle date and time data?
    - Should certain columns be encoded?
  - Handle missing data and clean the dataset, documenting the steps taken.

2. **Feature Engineering**:
  - Avoid performing feature selection on the entire dataset.
  - Standardize the data to prepare it for machine learning models.

3. **Regression Modeling**:
  - Predict the `Trip_distance` using various regression models.
  - Select models that require parameter tuning and describe the tuning process.
  - Evaluate the importance of input features in the models.

4. **Model Evaluation**:
  - Use machine learning evaluation techniques, such as cross-validation, to test the models.
  - Report the results and provide relevant visualizations.

This project aims to demonstrate the use of Dask for large-scale data processing and the application of machine learning techniques for regression tasks.