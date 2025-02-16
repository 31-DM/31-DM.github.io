red = read.csv('winequality-red.csv', header = T, sep = ';')
names(red) = c('Fixed Acidity', 'Volatile Acidity', 'Citric Acid', 
               'Residual Sugar', 'Chlorides', 'Free sulfur Dioxide',
               'Total Sulfur Dioxide', 'Density', 'pH', 'Sulphates', 'Alcohol', 'Quality')

white = read.csv('winequality-white.csv', header = T, sep = ';')
names(white) = c('Fixed Acidity', 'Volatile Acidity', 'Citric Acid', 
               'Residual Sugar', 'Chlorides', 'Free sulfur Dioxide',
               'Total Sulfur Dioxide', 'Density', 'pH', 'Sulphates', 'Alcohol', 'Quality')

Rtrain<-red[1:800,]
Rtest<-red[801:nrow(red),]

Wtrain<-white[1:2400,]
Wtest<-white[2401:nrow(white),]

Rm<-lm(Quality~., data=Rtrain)
Wm<-lm(Quality~., data=Wtrain)
Rpred<-predict(Rm, newdata=Rtest)
Wpred<-predict(Wm, newdata=Wtest)

MAPE<-function(pred, true)
{
  return(100*mean(abs((pred-true)/true), na.rm=T))
}

MAPE(Rpred, Rtest$Quality)
MAPE(Wpred, Wtest$Quality)


K<-4
dt1<-red[sample(1:nrow(red), nrow(red)), ]
len<-floor(nrow(dt1)/K) # number of obs. in testing set
pred<-matrix(, len, K)
test.all<-matrix(, len, K)
pred.err<-matrix(, len, K)


for(k in 1:K)
{
  index <- ((k-1)*len+1):(k*len)
  
  te<-dt1[index, ]
  tr<-dt1[-index, ]
  
  fit <- lm(Quality~., data=red)
  
  pre<- predict(fit, newdata=te)
  test.all[1:len, k]<-te$Quality
  pred[1:len, k]<- pre
  pred.err[1:len, k]<- abs(pre-te$Quality)
  
}

boxplot(pred.err, outline = FALSE)


K<-4
dt2<-white[sample(1:nrow(white), nrow(white)), ]
len<-floor(nrow(dt1)/K) # number of obs. in testing set
pred2<-matrix(, len, K)
test.all2<-matrix(, len, K)
pred.err2<-matrix(, len, K)


for(k in 1:K)
{
  index <- ((k-1)*len+1):(k*len)
  
  te2<-dt2[index, ]
  tr2<-dt2[-index, ]
  
  fit <- lm(Quality~., data=white)
  
  pr<- predict(fit, newdata=te2)
  test.all2[1:len, k]<-te2$Quality
  pred2[1:len, k]<- pr
  pred.err2[1:len, k]<- abs(pr-te2$Quality)
}

boxplot(pred.err2, outline = FALSE)
