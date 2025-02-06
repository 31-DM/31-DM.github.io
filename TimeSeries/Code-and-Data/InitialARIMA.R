library (data.table)
library(forecast)
library(MASS)
library(tseries)

data <- read.csv("seahawks.csv")

train <- data[1:79,c(1:3,9:14,17:20)]

score <- train[,5]
wind <- train[,7]
temp <- train[,8]
humidity <- train[,9]
SeahawksDefenceRank <- train[,10]
SeahawksOffenceRank <- train[,11]
OpponentDefenceRank <- train[,12]
OpponentOffenseRank <- train[,13]

t2 <- cbind(wind,temp,humidity,SeahawksDefenceRank,SeahawksOffenceRank,OpponentDefenceRank,OpponentOffenseRank)

m1 <- ts(score, start = c(2006,38), end = c(2011,41), frequency=15)

plot(m1, ylab = 'Total Score')

fitm2 <- auto.arima(m1, xreg = t2)

tsdiag(fitm2)
fitm2$coef
fitm2$aic
fitm2$sigma2

Box.test(fitm2$residuals, lag = 20, type = "Ljung-Box")

f1 <- forecast(fitm2, xreg = t2)
plot(f1)

projectedScores <- f1$mean

realLine <- data[80:158, 9]
projectedDifferential = projectedScores - realLine
realDifferential <- data[80:158, 11]

productDiff <- projectedDifferential * realDifferential
posProductDiff <- productDiff[which(productDiff > 0)]

length(posProductDiff)/length(projectedScores)
