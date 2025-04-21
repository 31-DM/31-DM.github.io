## Pastry Rating – Multivariate Linear Regression

This project applies multivariate linear regression to identify how pastry characteristics influence judges’ ratings  
Given experimental data on pastry **moisture content**, **sweetness**, and (in the extended version) **color**, this project explores the development of predictive models using linear regression. The objective is to determine which features most strongly impact pastry ratings and build models that best estimate outcomes

### Problem Details
- 16 pastry samples were evaluated by a panel of judges
- Each sample has:
  - A numerical **rating** (response variable)
  - Two numerical predictors: **moisture** and **sweetness**
  - A categorical feature in the extension: **color** (Yellow, Red, Purple)
- Goal: Fit a multivariate linear regression model that estimates pastry ratings as accurately as possible

---

**Initial Model, Feature Weighting, and Model Behavior**  
![Prompt P1](./Pastry%20P1.png)

**Homework Problem Extension (with Color)**  
![Prompt P2](./Pastry%20P2.png)
- Adds categorical feature "Color"  
- Use one-hot encoding or equivalent approach to include it in the regression model

For reference, see full prompt:
- [`Pastry.pdf`](./Pastry.pdf)

---

## Files Included
- [`DM-HW1130L1.mod`](./DM-HW1130L1.mod) – AMPL model for **Moisture + Sweetness**
- [`DM-HW1130L2.mod`](./DM-HW1130L2.mod) – Extended model with **Color** added as a third predictor
- [`DM-HW1130.dat`](./DM-HW1130.dat) – Input data for all three variables across 16 observations
- [`Model, Solution, and Explanation.txt`](./Model%2C%20Solution%2C%20and%20Explanation.txt) – Summary of results, coefficient interpretations, and predictions

---

## Solution Summary
- **Best-fit model using two predictors** (Moisture and Sweetness) achieved strong correlation with judge ratings  
- Coefficients suggest that **moisture has slightly stronger influence** on ratings than sweetness
- **Extension with color variable**:
  - Incorporated using binary indicators
  - Model performance improved by accounting for perceived color bias
- Evaluated alternative weights (e.g., 10×Moisture + 8×Sweetness) to explore model sensitivity

---

## Business & Practical Impact
- Demonstrates practical application of **linear regression for quality control**
- Method can be adapted for **food science, product development, and sensory testing**
- Useful for **R&D teams** in evaluating how physical and visual features impact consumer satisfaction
- Skillset aligns with roles in **data science, CPG analytics, and experimentation design**

---

> For detailed modeling logic and output tables, see: [`Model, Solution, and Explanation.txt`](./Model%2C%20Solution%2C%20and%20Explanation.txt)