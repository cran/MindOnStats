###################################################
### chunk number 1: setup
###################################################
#line 5 "Ch9.rnw"
source("GenericSettings.R")


###################################################
### chunk number 2: 
###################################################
#line 24 "Ch9.rnw"
data(HandHeight, package="MindOnStats")
str(HandHeight)


###################################################
### chunk number 3: 3HandsVHeights
###################################################
#line 31 "Ch9.rnw"
plot(HandSpan~Height, data=HandHeight, ylab="Hand span")


###################################################
### chunk number 4: 
###################################################
#line 39 "Ch9.rnw"
summary(Hand.lm <- lm(HandSpan~Height, data=HandHeight))


###################################################
### chunk number 5: 4HandResidsQQNorm
###################################################
#line 46 "Ch9.rnw"
Residuals = residuals(Hand.lm)
qqnorm(Residuals)
qqline(Residuals)


###################################################
### chunk number 6: 4HandResidsVFits
###################################################
#line 51 "Ch9.rnw"
Fits=fitted(Hand.lm)
plot(Residuals~Fits)


###################################################
### chunk number 7: XHandHeightFittedLinePlot
###################################################
#line 62 "Ch9.rnw"
plot(HandSpan~Height, data=HandHeight)
abline(Hand.lm)


###################################################
### chunk number 8: 
###################################################
#line 71 "Ch9.rnw"
data(Cereals, package="MindOnStats")
str(Cereals)
summary(Energy.lm <- lm(Energy~Dfibre, data=Cereals))


###################################################
### chunk number 9: 6EnergyResidsQQNorm
###################################################
#line 80 "Ch9.rnw"
qqnorm(residuals(Energy.lm))
qqline(residuals(Energy.lm))


###################################################
### chunk number 10: 6EnergyResidsVFits
###################################################
#line 84 "Ch9.rnw"
plot(residuals(Energy.lm)~fitted(Energy.lm))


###################################################
### chunk number 11: 
###################################################
#line 100 "Ch9.rnw"
data(Textbooks, package="MindOnStats")
summary(BookWeight.lm <- lm(Weight~Thickness, data=Textbooks))


###################################################
### chunk number 12: 13BookWeightResidsQQNorm
###################################################
#line 107 "Ch9.rnw"
Residuals = residuals(BookWeight.lm)
qqnorm(Residuals)
qqline(Residuals)


###################################################
### chunk number 13: 13BookWeightResidsVFits
###################################################
#line 112 "Ch9.rnw"
Fits = fitted(BookWeight.lm)
plot(Residuals~Fits)
abline(h=0)


###################################################
### chunk number 14: 
###################################################
#line 127 "Ch9.rnw"
sqrtWeight = sqrt(Textbooks$Weight)


###################################################
### chunk number 15: 
###################################################
#line 136 "Ch9.rnw"
summary(Energy.lm2 <- lm(Energy~Protein+Carbo+Dfibre, data=Cereals))


###################################################
### chunk number 16: 15Energy4ResidGraphs
###################################################
#line 141 "Ch9.rnw"
Residuals=residuals(Energy.lm2)
Fits=fitted(Energy.lm2)
par(mfrow=c(2,2))
plot(Residuals~Cereals$Protein, xlab="Protein")
abline(h=0)
plot(Residuals~Cereals$Carbo, xlab="Carbohydrates")
abline(h=0)
plot(Residuals~Cereals$Dfibre, xlab="Dietary fibre")
abline(h=0)
plot(Residuals~Fits, xlab="Fitted values")
abline(h=0)


###################################################
### chunk number 17: 
###################################################
#line 159 "Ch9.rnw"
data(TimePerception, package="MindOnStats")
summary(TenSec.lm <- lm(TenSec~FiveSec*Gender, data=TimePerception))


###################################################
### chunk number 18: XFitsVX
###################################################
#line 167 "Ch9.rnw"
plot(fitted(TenSec.lm)~TimePerception$FiveSec, xlab="Five seconds", main = "Predicted values for Ten Seconds vs actual data for Five Seconds", ylab="Fitted values")


###################################################
### chunk number 19: 
###################################################
#line 175 "Ch9.rnw"
summary( Price.lm1 <- lm(Price~Thickness+Weight+Year+Coverstyle+Colour+CD, data=Textbooks))


###################################################
### chunk number 20: 16TextbooksPriceResidsWeight
###################################################
#line 182 "Ch9.rnw"
Residuals=residuals(Price.lm1)
attach(Textbooks)
plot(Residuals~Weight)
abline(h=0)


###################################################
### chunk number 21: 16TextbooksPriceResidsColour
###################################################
#line 188 "Ch9.rnw"
plot(Residuals~Colour)


###################################################
### chunk number 22: 16TextbooksPriceResidsYear
###################################################
#line 191 "Ch9.rnw"
plot(Residuals~Year)
abline(h=0)
detach(Textbooks)


###################################################
### chunk number 23: 
###################################################
#line 204 "Ch9.rnw"
summary(Price.lm2 <- lm(Price~poly(Thickness,2,raw=TRUE)+poly(Weight,2,raw=TRUE)+Year+Coverstyle+Colour+CD, data=Textbooks))


###################################################
### chunk number 24: 
###################################################
#line 214 "Ch9.rnw"
anova(Energy.lm)


###################################################
### chunk number 25: 
###################################################
#line 219 "Ch9.rnw"
confint(Energy.lm)


###################################################
### chunk number 26: 
###################################################
#line 227 "Ch9.rnw"
predict(Energy.lm, Cereals[1:5,], interval="prediction")
predict(Energy.lm, Cereals[1:5,], interval="confidence")


