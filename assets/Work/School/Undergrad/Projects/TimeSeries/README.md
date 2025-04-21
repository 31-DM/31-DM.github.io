# Time Series NFL Betting Model

## Overview
This repository contains my **Time Series Modeling for Business (R) final project**, which applies **time series forecasting techniques** to predict **NFL game total scores** and identify potential arbitrage opportunities in **Over/Under betting markets**.

**Course Grade:** A  

## Contents
- [R Code & Datasets](./Code-and-Data) (R and CSV files)
- [Final Report](./Time%20Series%20NFL%20Betting%20Model%20Report.pdf) (In-depth analysis and findings)
- [Presentation Slides](./Time%20Series%20NFL%20Betting%20Model%20Presentation.pdf) (Project summary and key takeaways)

---

## Business & Practical Impact
- **Market Arbitrage Opportunity**: The ARIMA model achieved a **55.7% accuracy rate**, suggesting a measurable advantage in Over/Under betting markets
- **Sports Analytics & Decision Making**: Insights from the model can help **sports analysts, betting firms, and sportsbooks** refine betting lines and risk models
- **Forecasting Under Uncertainty**: Demonstrates the power of **time series forecasting** for decision-making in **finance, business strategy, and AI-driven applications**
- **Scalability to Other Domains**: The methodology extends beyond sports betting to **stock market forecasting, demand planning, and operational risk modeling**

---

## Data Sources
The dataset includes **NFL game results, betting lines, and environmental factors** spanning **2006 to 2020**, obtained from:
- [AUS Sports Betting](http://www.aussportsbetting.com/data/historical-nfl-results-and-odds-data/)
- [NFL Weather Archive](http://www.nflweather.com/en/archive)
- [Pro Football Reference](https://www.pro-football-reference.com/years/)

### **Key Data Features**
- Game details: **Date, home & away teams, final scores**
- Betting market data: **Over/Under betting line**
- Environmental conditions: **Temperature, wind speed, humidity, precipitation**
- Team performance metrics: **Offensive & defensive rankings**

---

## Models & Methodology
### **1. Holt-Winters Exponential Smoothing**
- Initial approach to identify trends
- Found to have **low predictive accuracy (~40%)**, making it ineffective for betting insights

### **2. ARIMA (AutoRegressive Integrated Moving Average)**
- Utilized external regressors (`xreg`) to incorporate **weather and team performance factors**
- Achieved **55.7% accuracy** in forecasting total scores
- Used to generate **seasonal forecasts** for future NFL games

**Key Finding:** The ARIMA model demonstrated a **potential betting edge**, offering a statistically viable approach to Over/Under wagers

---

## Model Performance
| Model         | Accuracy Rate | Notes |
|--------------|--------------|------------------------------------------------|
| Holt-Winters | 40%          | Limited predictive power, unsuitable for betting applications |
| ARIMA        | 55.7%        | Profitable when applied with disciplined betting strategies |

A **55.7% accuracy rate** suggests that **long-term profits** could be generated using a **consistent betting strategy**

---

## Technical Skills Used
- **Programming**: R (Time Series Analysis, Data Wrangling, Visualization)
- **Data Handling**: CSV ingestion, dataset merging, feature engineering
- **Time Series Modeling**: Holt-Winters Exponential Smoothing, ARIMA (AutoRegressive Integrated Moving Average)
- **Feature Engineering**: Incorporating **weather factors, offensive/defensive rankings**, and external regressors
- **Model Evaluation**: Performance assessment via **AIC, Ljung-Box Test, and Mean Squared Error (MSE)**
- **Business & Analytics Applications**: Applying predictive modeling to **market arbitrage and betting strategy optimization**

---

## Future Improvements
- **Enhance Model Accuracy**: Explore **LSTM (Long Short-Term Memory networks)** or **Bayesian time series models** to refine predictions
- **Expand Team Coverage**: Current model focuses on the **Seattle Seahawks**; generalizing it to **all NFL teams** could provide broader market insights
- **Automate Data Collection**: Implement an **R script or API pipeline** for automated data retrieval and model updates
- **Optimize Betting Strategy**: Experiment with **Kelly Criterion and risk-adjusted betting models** to maximize profitability based on prediction confidence

---

## How to Use This Repository
1. **Explore the R code and datasets** in the `/Code-and-Data` folder
2. **Read the final report** for an in-depth explanation of the methodology and results
3. **Review the presentation slides** for key takeaways and visual summaries

---

## Author
**Dev Misra**  

Check out my [portfolio](https://31-dm.github.io/) for more of my work