# Modeling Wine Preferences via Data Mining

## Overview
This repository contains my **Large-Scale Data Analysis (LSDA) final project**, where I built predictive models to **analyze and forecast wine quality** based on key chemical properties. The project applies **data mining, regression analysis, and model evaluation techniques** to optimize wine classification.

**Course Grade:** A  

## Contents
- **[Code](https://github.com/31-DM/31-DM.github.io/blob/master/assets/Work/School/Undergrad/Projects/LSDA/Code-and-Data/Wine%20Preferences.R)**: R scripts for data preprocessing, modeling, and validation
- **[Datasets](https://github.com/31-DM/31-DM.github.io/tree/master/assets/Work/School/Undergrad/Projects/LSDA/Code-and-Data)**: Red and white wine quality datasets
- **[Presentation Slides](./Modeling%20Wine%20Preferences%20via%20Data%20Mining.pdf)**: Summary of key insights and results

---

## Project Objectives
- **Predict wine quality** using a **multiple linear regression model**
- **Identify key chemical properties** that impact wine taste and consumer preferences
- **Evaluate and refine predictive models** using statistical validation techniques
- **Analyze industry trends** to inform wine production and quality control

---

## Business & Practical Impact
- **Optimizing Wine Production**: Helps **winemakers adjust acidity, pH levels, and fermentation** for higher quality output
- **Quality Control & Certification**: Supports **regulatory agencies and vineyards** in ensuring product consistency
- **Consumer & Market Insights**: Identifies the chemical factors that **directly influence wine preference**, informing **pricing and branding strategies**
- **Scalability to Other Industries**: Methodology can be adapted for **food & beverage quality control, agriculture analytics, and chemical process optimization**

---

## Dataset & Data Sources
The dataset consists of **two large-scale wine quality datasets** (Red & White) obtained from:
- [UCI Machine Learning Repository - Wine Quality Dataset](https://archive.ics.uci.edu/ml/datasets/Wine+Quality)
- Contains **chemical properties** such as:
  - **Fixed Acidity, Volatile Acidity, Citric Acid, Residual Sugar, pH, Sulphates, Alcohol**
  - **Free Sulfur Dioxide, Total Sulfur Dioxide, Density, Chlorides**
- **Response Variable**: Wine Quality Score (Rated from 0–10)
- **Sample Size**:
  - Red Wine: **1,599 samples**
  - White Wine: **4,898 samples**

---

## Modeling Approach
### 1. **Multiple Linear Regression (MLR)**
- **Baseline Model:** Included all chemical variables as predictors
- **Feature Selection:** Used **`regsubsets` (leaps)** to refine regressors
- **Final Model:** Selected **8 most influential variables**

### 2. **Model Assumptions & Validation**
- **L.I.N.E Assumptions (Linearity, Independence, Normality, Equal Variance)**
- **Variance Inflation Factor (VIF) Analysis** to remove multicollinearity
- **Mean Absolute Percentage Error (MAPE)** to assess prediction accuracy
- **K-Fold Cross Validation (4-Fold)**
  - Ensured model robustness across **multiple data splits**.

### 3. **Model Performance**
| Model | Adjusted R² | Statistical Significance (p-value) | MAPE (Prediction Error) |
|-------|------------|-----------------------------------|------------------------|
| **Initial Red Wine Model** | 0.3098 | 0.6358 (Not Significant) | 9.60% |
| **Improved Red Wine Model** | 0.3120 | 2e-16 (Highly Significant) | 9.60% |
| **Initial White Wine Model** | 0.2787 | 2.54e-15 (Significant) | 10.37% |
| **Improved White Wine Model** | 0.2795 | 2e-16 (Highly Significant) | 10.37% |

- **Key Finding:** The **top 3 predictors of wine quality** for **red wine** were **Volatile Acidity, Sulphates, and Alcohol**, while for **white wine**, they were **Fixed Acidity, Sulphates, and pH**

---

## Technical Skills Used
- **Programming**: R (Data Preprocessing, Modeling, Visualization)
- **Statistical Modeling**: Multiple Linear Regression (MLR), Feature Selection (`regsubsets`), Variance Inflation Factor (VIF)
- **Validation Techniques**: K-Fold Cross Validation, Mean Absolute Percentage Error (MAPE)
- **Data Processing**: Handling large-scale datasets, feature engineering, and model optimization
- **Visualization**: Heatmaps, distribution plots, residual analysis, and regression diagnostics

---

## Future Improvements
- **Apply Machine Learning Models**: Experiment with **Random Forest, Gradient Boosting, or Neural Networks** to improve predictive accuracy
- **Explore Classification Models**: Convert the problem into a **classification task** (e.g., **high vs. low quality wines**)
- **Analyze Additional Features**: Incorporate **geographic & climate data** to assess environmental effects on wine quality
- **Expand Beyond Wine Industry**: Adapt similar data mining techniques for **food science, agriculture, or beverage quality control**

---

## How to Use This Repository
1. **Explore the datasets** in the /data folder 
2. **Run the R scripts** in the /code folder for model training and evaluation  
3. **Review the final report & presentation** for in-depth insights
   
---

## Author
**Dev Misra**  

Check out my [portfolio](https://31-dm.github.io/) for more of my work

---
