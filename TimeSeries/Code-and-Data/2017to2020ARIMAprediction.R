library (data.table)
library(forecast)
library(MASS)
library(tseries)

data <- read.csv("seahawks_2017to2020.csv")

train <- data[,c(1:6,10:19)]

score <- train[,6]
wind <- train[,9]
temp <- train[,10]
humidity <- train[,11]
SeahawksDefenceRank <- train[,13]
SeahawksOffenceRank <- train[,14]
OpponentDefenceRank <- train[,15]
OpponentOffenseRank <- train[,16]

t2 <- cbind(wind,temp,humidity,SeahawksDefenceRank,SeahawksOffenceRank,OpponentDefenceRank,OpponentOffenseRank)

m1 <- ts(score, start = c(2017,16), end = c(2020,18), frequency=20)

plot(m1, ylab = 'Total Score', xaxt ='n')
axis(1, at = c(2017,2018,2019,2020,2021), labels = c(2017,2018,2019,2020,2021))

fitm2 <- auto.arima(m1, xreg = t2, lambda = "auto", seasonal = FALSE)

tsdiag(fitm2)
fitm2$coef
fitm2$aic
fitm2$sigma2

f1 <- forecast(fitm2, xreg = t2)
plot(f1, xlab = 'Year', ylab = 'Total Score')

data2 <- read.csv("seahawkspredict.csv")

seasonforecast <- data2[,4:10]
seasonforecast <- data.matrix(seasonforecast)

a1 <- predict(f1, n.ahead = 4, newxreg = seasonforecast, se.fit = TRUE)
a1$mean[1:4]