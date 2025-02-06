#library (data.table)
library(fpp)
library(fpp2)
library(forecast)
library(MASS)
library(tseries)

#seahawks FINAL
#data import
ogdata <- read.csv("seahawks.csv")
names(ogdata)
data <- ogdata[,c(1:20)]
home.team <- factor(data[,2])
away.team <- factor(data[,3])
overtime <-(data[,6])
playoff <- data[,7]
venue <- data[,8]
total.score.open <- data[,9]
total.score <- data[,10]
differential <- data[,11]
avg.wind <- data[,12]
avg.temp <- data[,13]
avg.hum <- data[,14]
sky <- factor(data[,15])
precip <- factor(data[,16])
sh.def <- data[,17]
sh.off <- data[,18]
opp.def <- data[,19]
opp.off <- data[,20]

#total score regression fr fr
fit <- lm(total.score ~ overtime + playoff + venue + avg.wind + avg.temp
          + avg.hum + sky + precip + sh.def + sh.off + opp.def + opp.off)
par(mfcol = c(2,2))
summary(fit)
plot(fit)
step(fit, direction = "backward")
fit2 <- lm(total.score ~ overtime + avg.temp + precip + opp.def + opp.off)
summary(fit2)
par(mfcol = c(2,2))
plot(fit2)
par(mfcol = c(1,1))
plot(fitted(fit2), total.score, xlab = "Fitted Values", ylab = "Total Score")
abline(a = 0, b = 1)
acf(fit2$residuals)

#seahawks total score
total.score
plot(log(total.score), type = "l")

#total score ts
par(mfcol = c(1,1))
ts.total <- ts(total.score, start = 2006, end = c(2012, 10), frequency=15)
plot(ts.total)
ts.total
acf(ts.total)
#decomposition
stl <- stl(ts.total, s.window = 5, t.window = 20)
plot(stl)
names(stl)
stl$time.series
acf(stl$time.series[,1])
stls <- seasadj(stl)
plot(forecast(stls))
#HoltWinters forecast
scorecast <- HoltWinters(ts.total)
scorecast
scorecast$SSE
plot(scorecast)
scorecast2 <- forecast(scorecast)
scorecast2
plot(scorecast2)
acf(scorecast2$residuals)
Box.test(scorecast2$residuals, lag = 20, type = "Ljung-Box")


