# Time Series NFL Betting Model

## Overview
This repository contains the entirety of my **Time Series Modeling for Business (R) final project**. The project focuses on leveraging **time series forecasting techniques** to predict **NFL game total scores** and identify arbitrage opportunities in **Over/Under betting markets**.

**Course Grade:** A  

## Contents
- **[R Code & Datasets](./Code-and-Data)** (R and CSV files)
- **[Final Report](./Time%20Series%20NFL%20Betting%20Model%20Report.pdf)** (In-depth analysis and findings)
- **[Presentation Slides](./Time%20Series%20NFL%20Betting%20Model%20Presentation.pptx)** (Project summary and key takeaways)

---

## Business & Practical Impact
- **Market Arbitrage Opportunity**: The ARIMA model achieved a **55.7% accuracy rate**, suggesting a statistical **edge in Over/Under betting markets**
- **Sports Analytics & Decision Making**: The findings provide insights that could be leveraged by **sports analysts, betting firms, and sportsbooks** to optimize betting lines and risk models
- **Forecasting Under Uncertainty**: This project demonstrates the power of **time series forecasting** in decision-making, a critical skill in **finance, business strategy, and AI applications**
- **Expanding to Other Domains**: While applied to sports betting, this methodology is transferable to **stock market predictions, demand forecasting, and operational risk modeling**

---

## Data Sources
The dataset consists of **NFL game results, betting lines, and environmental factors** from **2006 to 2020**, retrieved from:
- [AUS Sports Betting](http://www.aussportsbetting.com/data/historical-nfl-results-and-odds-data/)
- [NFL Weather Archive](http://www.nflweather.com/en/archive)
- [Pro Football Reference](https://www.pro-football-reference.com/years/)

The final dataset includes:
- **Game Date, Home & Away Teams, Final Scores**
- **Over/Under Betting Line**
- **Weather conditions** (Temperature, Wind Speed, Humidity, Precipitation)
- **Team Offensive & Defensive Rankings**

---

## Models & Methodology
### 1. Holt-Winters Exponential Smoothing
- Initial approach to identify trends
- Found **low predictive accuracy** (~40%)

### 2. ARIMA (AutoRegressive Integrated Moving Average)
- Incorporates **extraneous factors** (weather, rankings) via `xreg`
- Achieved **55.7% accuracy** in predicting total scores
- Used to generate **future season forecasts**

Key Finding: The ARIMA model demonstrated **a potential betting edge**, offering a **statistically profitable** approach to Over/Under wagers

---

## Model Performance
| Model   | Accuracy Rate | Notes |
|---------|-------------|------------------------------------------------|
| **Holt-Winters** | 40% | Limited predictive power |
| **ARIMA** | 55.7% | Profitable with large sample size |

With a 55.7% accuracy rate, an even bet unit strategy could generate **consistent profits** over time

---

## Technical Skills Used
- **Programming**: R (Time Series Analysis, Data Wrangling, Visualization)
- **Data Handling**: CSV data ingestion, dataset merging, and preprocessing
- **Time Series Modeling**: Holt-Winters Exponential Smoothing, ARIMA (AutoRegressive Integrated Moving Average)
- **Feature Engineering**: Weather impact modeling, offense/defense rankings, regression with external factors
- **Forecast Evaluation**: Model selection using AIC, Ljung-Box Test, and Mean Squared Error (MSE)
- **Business & Analytics Applications**: Applying predictive modeling to **market arbitrage and decision-making**

---

## Future Improvements
- **Improve Model Accuracy**: Experiment with additional machine learning models such as **LSTM (Long Short-Term Memory networks)** or **Bayesian time series models** to refine predictions
- **Expand to More Teams**: The model currently focuses on the **Seattle Seahawks**; generalizing it to **all NFL teams** would provide broader insights
- **Automate Data Collection**: Implement an **R script or API pipeline** to automatically fetch and update datasets
- **Optimize Betting Strategy**: Explore **Kelly Criterion** and other risk management strategies to determine optimal bet sizing based on model confidence levels

---

## How to Use This Repository
1. **Explore** the `R` code and datasets  
2. **Read the report** for a deep dive into model construction  
3. **Review the presentation** for key insights and takeaways  

---

## Author
**Dev Misra**  

Check out my [portfolio](https://31-dm.github.io/) for more of my work

---
