###################################################
### chunk number 1: setup
###################################################
#line 7 "Ch6.rnw"
source("GenericSettings.R")


###################################################
### chunk number 2: 
###################################################
#line 31 "Ch6.rnw"
x=1:5
x
cumsum(x)


###################################################
### chunk number 3: 
###################################################
#line 41 "Ch6.rnw"
dbinom(7,  size=10, prob=0.487)


###################################################
### chunk number 4: 
###################################################
#line 47 "Ch6.rnw"
x=10:15
dbinom(x, size=15, prob=0.5)
sum(dbinom(x, size=15, prob=0.5))


###################################################
### chunk number 5: 
###################################################
#line 53 "Ch6.rnw"
pbinom(9, size=15, prob=0.5, lower.tail=FALSE) 


###################################################
### chunk number 6: 
###################################################
#line 59 "Ch6.rnw"
pnorm(25, mean=26.42, sd=4.3)


###################################################
### chunk number 7: 
###################################################
#line 63 "Ch6.rnw"
pnorm(30, mean=26.42, sd=4.3, lower.tail=FALSE)


###################################################
### chunk number 8: 
###################################################
#line 67 "Ch6.rnw"
pnorm(c(25,30), mean=26.42, sd=4.3)
diff(pnorm(c(25,30), mean=26.42, sd=4.3))


###################################################
### chunk number 9: 
###################################################
#line 80 "Ch6.rnw"
data(Bike, package="MindOnStats")
MaleCyclists=Bike$Speed[Bike$Gender=="Male"&Bike$Type=="Bike"]


###################################################
### chunk number 10: 12MaleCyclistsQQNorm
###################################################
#line 87 "Ch6.rnw"
qqnorm(MaleCyclists)
qqline(MaleCyclists)


###################################################
### chunk number 11: 
###################################################
#line 95 "Ch6.rnw"
data(TimePerception, package="MindOnStats")
str(TimePerception)


###################################################
### chunk number 12: 13FiveSecHist
###################################################
#line 101 "Ch6.rnw"
attach(TimePerception)
hist(FiveSec)


###################################################
### chunk number 13: 13FiveSecQQNorm
###################################################
#line 105 "Ch6.rnw"
qqnorm(FiveSec)
qqline(FiveSec)
detach(TimePerception)


###################################################
### chunk number 14: 14TenSecHist
###################################################
#line 117 "Ch6.rnw"
attach(TimePerception)
hist(TenSec)


###################################################
### chunk number 15: 14TenSecQQNorm
###################################################
#line 121 "Ch6.rnw"
qqnorm(TenSec)
qqline(TenSec)
detach(TimePerception)


