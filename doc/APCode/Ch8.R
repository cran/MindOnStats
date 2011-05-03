###################################################
### chunk number 1: setup
###################################################
#line 7 "Ch8.rnw"
source("GenericSettings.R")


###################################################
### chunk number 2: 
###################################################
#line 21 "Ch8.rnw"
data(GoGoGo, package="MindOnStats")
str(GoGoGo)


###################################################
### chunk number 3: 
###################################################
#line 29 "Ch8.rnw"
GreenLights.aov = aov(Time~AgeGroup, data=GoGoGo, subset=Lights=="green")
summary(GreenLights.aov)


###################################################
### chunk number 4: 
###################################################
#line 36 "Ch8.rnw"
data(Textbooks, package="MindOnStats")


###################################################
### chunk number 5: 
###################################################
#line 41 "Ch8.rnw"
summary(Price.aov1 <- aov(Price~Discipline, data=Textbooks))


###################################################
### chunk number 6: 
###################################################
#line 51 "Ch8.rnw"
data(PaperPlanes, package="MindOnStats")
dim(PaperPlanes)
head(PaperPlanes)


###################################################
### chunk number 7: 
###################################################
#line 58 "Ch8.rnw"
StingRay = PaperPlanes[PaperPlanes$Design=="stingray glider",]
dim(StingRay)
head(StingRay)


###################################################
### chunk number 8: 4StingRayBoxPlots
###################################################
#line 69 "Ch8.rnw"
boxplot(FlightTime~Paper, data=StingRay)


###################################################
### chunk number 9: 
###################################################
#line 73 "Ch8.rnw"
summary(StingRay.aov1 <- aov(FlightTime~Paper, data=StingRay))


###################################################
### chunk number 10: XGreenLightsResidPlots
###################################################
#line 84 "Ch8.rnw"
par(mfrow=c(2,2))
plot(GreenLights.aov)


###################################################
### chunk number 11: 6GreenLightsResidFits
###################################################
#line 96 "Ch8.rnw"
Residuals = residuals(GreenLights.aov)
Fits = fitted(GreenLights.aov)
plot(Residuals~Fits)


###################################################
### chunk number 12: 6GreenLightsQQNorm
###################################################
#line 101 "Ch8.rnw"
qqnorm(Residuals)
qqline(Residuals)


###################################################
### chunk number 13: 
###################################################
#line 112 "Ch8.rnw"
summary(StingRay.aov2 <- aov(log(FlightTime)~Paper, data=StingRay))


###################################################
### chunk number 14: 9StingRayResidQQNorm
###################################################
#line 119 "Ch8.rnw"
Residuals = residuals(StingRay.aov2)
qqnorm(Residuals)
qqline(Residuals)


###################################################
### chunk number 15: 9StingRayResidVFits
###################################################
#line 124 "Ch8.rnw"
Fits = fitted(StingRay.aov2)
plot(Residuals~Fits)


###################################################
### chunk number 16: 10StingRayLogResidQQNorm
###################################################
#line 136 "Ch8.rnw"
Residuals = residuals(StingRay.aov2)
qqnorm(Residuals)
qqline(Residuals)


###################################################
### chunk number 17: 10StingRayLogResidVFits
###################################################
#line 141 "Ch8.rnw"
Fits = fitted(StingRay.aov2)
plot(Residuals~Fits)


###################################################
### chunk number 18: 
###################################################
#line 157 "Ch8.rnw"
kruskal.test(FlightTime~Paper, data=StingRay)


###################################################
### chunk number 19: 
###################################################
#line 170 "Ch8.rnw"
GreenLights.HSD = TukeyHSD(GreenLights.aov)
GreenLights.HSD


###################################################
### chunk number 20: 13Tukey
###################################################
#line 177 "Ch8.rnw"
plot(GreenLights.HSD)


###################################################
### chunk number 21: 
###################################################
#line 188 "Ch8.rnw"
data(TimePerception, package="MindOnStats")


###################################################
### chunk number 22: 
###################################################
#line 193 "Ch8.rnw"
summary(aov(TenSec~Gender*AgeGroup, data=TimePerception))


###################################################
### chunk number 23: 15TimeIntPlot
###################################################
#line 199 "Ch8.rnw"
attach(TimePerception)
interaction.plot(response=TenSec, x.factor=AgeGroup, trace.factor=Gender)
detach(TimePerception)


###################################################
### chunk number 24: 
###################################################
#line 210 "Ch8.rnw"
summary(Planes.aov2 <- aov(FlightTime~Paper*Design, data=PaperPlanes))
lnFlightTime = log(PaperPlanes$FlightTime)
summary(Planes.aov3 <- aov(lnFlightTime~Paper*Design, data=PaperPlanes))


###################################################
### chunk number 25: 18PlanesResidQQNorm
###################################################
#line 218 "Ch8.rnw"
Residuals = residuals(Planes.aov2)
qqnorm(Residuals)
qqline(Residuals)


###################################################
### chunk number 26: 18PlanesResidVFits
###################################################
#line 223 "Ch8.rnw"
Fits = fitted(Planes.aov2)
plot(Residuals~Fits)


###################################################
### chunk number 27: 19PlanesLogResidQQNorm
###################################################
#line 235 "Ch8.rnw"
Residuals = residuals(Planes.aov3)
qqnorm(Residuals)
qqline(Residuals)


###################################################
### chunk number 28: 19PlanesLogResidVFits
###################################################
#line 240 "Ch8.rnw"
Fits = fitted(Planes.aov3)
plot(Residuals~Fits)


###################################################
### chunk number 29: 
###################################################
#line 251 "Ch8.rnw"
summary(aov(Time~Gender*Lights, data=GoGoGo))
summary(aov(Time~Lights*Gender, data=GoGoGo))


###################################################
### chunk number 30: 
###################################################
#line 261 "Ch8.rnw"
bartlett.test(Price~Discipline, data=Textbooks)


