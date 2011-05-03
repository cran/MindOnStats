###################################################
### chunk number 1: setup
###################################################
#line 7 "Ch4.rnw"
source("GenericSettings.R")


###################################################
### chunk number 2: 
###################################################
#line 16 "Ch4.rnw"
data(Bike, package="MindOnStats")


###################################################
### chunk number 3: 
###################################################
#line 20 "Ch4.rnw"
Bike2 = Bike[Bike$Type=="Bike", ]
str(Bike2)


###################################################
### chunk number 4: 1Bike2StripPlotJitterWindows eval=FALSE
###################################################
## #line 29 "Ch4.rnw"
## windows(7, 4)
## stripchart(Speed~Gender, data=Bike2, method="jitter", pch=20, xlab="Speed (km/h)")


###################################################
### chunk number 5: 1Bike2StripPlotJitterNoWindowsByGender
###################################################
#line 33 "Ch4.rnw"
stripchart(Speed~Gender, data=Bike2, method="jitter", pch=20, xlab="Speed (km/h)")


###################################################
### chunk number 6: 1Bike2StripPlotStackByGender
###################################################
#line 36 "Ch4.rnw"
stripchart(Speed~Gender, data=Bike2, method="stack", pch=20, xlab="Speed (km/h)")


###################################################
### chunk number 7: 2Bike2BoxplotByGender
###################################################
#line 44 "Ch4.rnw"
boxplot(Speed~Gender, data=Bike2, ylab="Speed (km/h)", xlab="Gender", main="Speed of cyclists by gender")


###################################################
### chunk number 8: 
###################################################
#line 50 "Ch4.rnw"
data(Mobiles, package="MindOnStats")
str(Mobiles)


###################################################
### chunk number 9: 3MobilesBoxplotByGenderPlan
###################################################
#line 58 "Ch4.rnw"
boxplot(Bill~paste(Gender,PlanType), data=Mobiles, ylab="Bill ($)", main="Monthly bill by gender and whether prepaid or plan", cex.axis=0.9)


###################################################
### chunk number 10: 
###################################################
#line 68 "Ch4.rnw"
data(Fish, package="MindOnStats")
str(Fish)


###################################################
### chunk number 11: 
###################################################
#line 75 "Ch4.rnw"
SortedLengths = sort(Fish$Length)
SortedLengths


###################################################
### chunk number 12: 
###################################################
#line 80 "Ch4.rnw"
mean(Fish$Length)
median(Fish$Length)


###################################################
### chunk number 13: 
###################################################
#line 89 "Ch4.rnw"
length(SortedLengths)
FishLengthsNoShark = SortedLengths[-58]


###################################################
### chunk number 14: 
###################################################
#line 96 "Ch4.rnw"
range(FishLengthsNoShark)
sd(FishLengthsNoShark)
IQR(FishLengthsNoShark)
var(FishLengthsNoShark)


###################################################
### chunk number 15: 
###################################################
#line 103 "Ch4.rnw"
fivenum(FishLengthsNoShark)
summary(FishLengthsNoShark)
quantile(FishLengthsNoShark, probs=c(0.25, 0.75))


###################################################
### chunk number 16: 
###################################################
#line 115 "Ch4.rnw"
lnBills = log(Mobiles$Bill)


###################################################
### chunk number 17: 
###################################################
#line 121 "Ch4.rnw"
quantile(FishLengthsNoShark, probs=0.90)


###################################################
### chunk number 18: 
###################################################
#line 125 "Ch4.rnw"
min(FishLengthsNoShark)
max(FishLengthsNoShark)


