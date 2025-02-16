# Time Series NFL Betting Model

## Overview
This repository contains the entirety of my **Time Series Modeling for Business (R) Capstone Project**. The project focuses on leveraging **time series forecasting techniques** to predict **NFL game total scores** and identify arbitrage opportunities in **Over/Under betting markets**.

**Course Grade:** A  

## Contents
- **R Code & Datasets** (CSV files)
- **[Final Report](./Time%20Series%20NFL%20Betting%20Model%20Report.pdf)** (In-depth analysis and findings)
- **Presentation Slides** (Project summary and key takeaways)

---

## Project Goals
- Analyze **historical NFL game data** to build predictive models  
- Incorporate **weather conditions and team statistics** into forecasting  
- Compare **Holt-Winters** and **ARIMA models** to assess prediction accuracy  
- Identify patterns that could provide **a betting edge** in **Over/Under** markets  

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

Key Finding: The ARIMA model demonstrated **a potential betting edge**, offering a **statistically profitable** approach to Over/Under wagers.

---

## Model Performance
| Model   | Accuracy Rate | Notes |
|---------|-------------|------------------------------------------------|
| **Holt-Winters** | 40% | Limited predictive power |
| **ARIMA** | 55.7% | Profitable with large sample size |

With a 55.7% accuracy rate, an even bet unit strategy could generate **consistent profits** over time.

---

## Key Takeaways
- **Weather conditions significantly impact total scores** (wind speed & temperature)  
- **Defensive rankings play a crucial role** in forecasting game totals  
- **ARIMA with external regressors outperforms naive time series models**  
- **The model suggests Over/Under betting profitability with disciplined execution**  

---

## How to Use This Repository
1. **Explore** the `R` code and datasets  
2. **Read the report** for a deep dive into model construction  
3. **Review the presentation** for key insights and takeaways  

---

## Author
**Dev Misra**  
[LinkedIn](https://www.linkedin.com/in/dev-misra)  

Check out my portfolio for more samples of my work.  
