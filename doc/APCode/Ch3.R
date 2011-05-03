###################################################
### chunk number 1: setup
###################################################
#line 6 "Ch3.rnw"
source("GenericSettings.R")


###################################################
### chunk number 2: 
###################################################
#line 17 "Ch3.rnw"
data(Bike, package="MindOnStats")


###################################################
### chunk number 3: 
###################################################
#line 22 "Ch3.rnw"
summary(Bike)
summary(Bike$Type)


###################################################
### chunk number 4: 
###################################################
#line 29 "Ch3.rnw"
tapply(Bike$Time, Bike$Type, length)
tapply(Bike$Time, Bike$Type, length)/length(Bike$Type)


###################################################
### chunk number 5: 1ABikePieChart
###################################################
#line 41 "Ch3.rnw"
pie(summary(Bike$Type))
title("Pie chart")


###################################################
### chunk number 6: 1ABikeBarChart
###################################################
#line 45 "Ch3.rnw"
barplot(summary(Bike$Type))
title("Bar chart", ylab="Count", xlab="Type")


###################################################
### chunk number 7: 1BBikePieChart
###################################################
#line 53 "Ch3.rnw"
pie(summary(Bike$Type), labels=paste(names(summary(Bike$Type)), round(100*summary(Bike$Type)/length(Bike$Type), 1)))
title("Pie chart")


###################################################
### chunk number 8: 1BBikeBarChart
###################################################
#line 57 "Ch3.rnw"
barplot(summary(Bike$Type)/length(Bike$Type))
title("Bar chart", ylab="Percentage", xlab="Type")


###################################################
### chunk number 9: 
###################################################
#line 66 "Ch3.rnw"
tapply(Bike$Time, list(Bike$Gender, Bike$Type), length)
t(tapply(Bike$Time, list(Bike$Gender, Bike$Type), length))
addmargins(t(tapply(Bike$Time, list(Bike$Gender, Bike$Type), length)))


###################################################
### chunk number 10: 2BikeStackBar
###################################################
#line 75 "Ch3.rnw"
barplot(tapply(Bike$Time, list(Bike$Gender, Bike$Type), length), legend=TRUE)
title("Stack bar chart of type, gender", ylab="Count", xlab="Type")


###################################################
### chunk number 11: 2BikeClusterBar
###################################################
#line 79 "Ch3.rnw"
barplot(tapply(Bike$Time, list(Bike$Gender, Bike$Type), length), legend=TRUE, beside=TRUE)
title("Cluster bar chart of type, gender", ylab="Count", xlab="Type")


###################################################
### chunk number 12: 3Bike3ClusterBar
###################################################
#line 90 "Ch3.rnw"
barplot(tapply(Bike$Time, list(paste(Bike$Gender, Bike$Direction), Bike$Type), length), legend=TRUE, beside=TRUE)
title("Chart of type, direction, gender", ylab="Count", xlab="Type")


###################################################
### chunk number 13: 
###################################################
#line 102 "Ch3.rnw"
Counts = tapply(Bike$Time, list(Bike$Gender, Bike$Type), length)
Counts
Divisor = matrix(tapply(Bike$Type, Bike$Type, length), nrow=2, ncol=4, byrow=T)
Divisor
round(t(100*Counts/Divisor), 1)


###################################################
### chunk number 14: 
###################################################
#line 115 "Ch3.rnw"
data(PennState1, package="MindOnStats")
str(PennState1)


###################################################
### chunk number 15: 
###################################################
#line 125 "Ch3.rnw"
data(HoldingBreath, package="MindOnStats")
str(HoldingBreath)


###################################################
### chunk number 16: 9HBDotPlotWindows eval=FALSE
###################################################
## #line 134 "Ch3.rnw"
## windows(7, 2.5)
## dotchart(HoldingBreath$Time, pch=20, xlab="Time (seconds)", lcolor=0)


###################################################
### chunk number 17: 9HBDotPlotNoWindows
###################################################
#line 138 "Ch3.rnw"
dotchart(HoldingBreath$Time, pch=20, xlab="Time (seconds)", lcolor=0)


###################################################
### chunk number 18: 9HBStripPlotJitterWindows eval=FALSE
###################################################
## #line 141 "Ch3.rnw"
## windows(7, 2.5)
## stripchart(HoldingBreath$Time, method="jitter", pch=20, xlab="Time (seconds)")


###################################################
### chunk number 19: 9HBStripPlotJitterNoWindows
###################################################
#line 145 "Ch3.rnw"
stripchart(HoldingBreath$Time, method="jitter", pch=20, xlab="Time (seconds)")


###################################################
### chunk number 20: 9HBStripPlotStackWindows eval=FALSE
###################################################
## #line 148 "Ch3.rnw"
## windows(7, 2.5)
## stripchart(round(HoldingBreath$Time,0), method="stack", pch=20, xlab="Time (seconds)")


###################################################
### chunk number 21: 9HBStripPlotStackNoWindows
###################################################
#line 152 "Ch3.rnw"
stripchart(round(HoldingBreath$Time,0), method="stack", pch=20, xlab="Time (seconds)")


###################################################
### chunk number 22: 10HBHist
###################################################
#line 163 "Ch3.rnw"
hist(HoldingBreath$Time, xlab="Time (seconds)")


###################################################
### chunk number 23: HBStem
###################################################
#line 172 "Ch3.rnw"
stem(HoldingBreath$Time)


###################################################
### chunk number 24: 12HBBoxPlotWindows eval=FALSE
###################################################
## #line 179 "Ch3.rnw"
## windows(7, 5)
## boxplot(HoldingBreath$Time, horizontal=TRUE, xlab="Time (seconds)", main="Holding breath time")


###################################################
### chunk number 25: 12HBBoxPlotNoWindows
###################################################
#line 183 "Ch3.rnw"
boxplot(HoldingBreath$Time, horizontal=TRUE, xlab="Time (seconds)", main="Holding breath time")


###################################################
### chunk number 26: 16BikeIntPlot
###################################################
#line 197 "Ch3.rnw"
interaction.plot(x.factor=Bike$Type, trace.factor=Bike$Gender, response=Bike$Speed, ylab="Mean of Speed", xlab="Type", trace.label="Gender", main="Interaction plot for Speed")


###################################################
### chunk number 27: 17HBScatterPlot
###################################################
#line 212 "Ch3.rnw"
attach(HoldingBreath)
plot(x=Age, y=Time, xlab="Age (years)", ylab="Time (seconds)", main="Holding Breath, Time vs Age")
detach(HoldingBreath)


###################################################
### chunk number 28: 
###################################################
#line 222 "Ch3.rnw"
data(Textbooks, package="MindOnStats")
str(Textbooks)


###################################################
### chunk number 29: 18TextbooksScatterPlot
###################################################
#line 232 "Ch3.rnw"
plot(Price~Thickness, data=Textbooks, xlab="Thickness (mm)", ylab="Price (A$)", main="Textbook Price vs Thickness")


###################################################
### chunk number 30: 20HBScatterPlotByGender
###################################################
#line 239 "Ch3.rnw"
attach(HoldingBreath)
plot(x=Age, y=Time, xlab="Age (years)", ylab="Time (seconds)", main="Holding Breath, Time vs Age", type="n")
points(x=Age[Gender=="m"], y=Time[Gender=="m"],  pch=21, col=4)
points(x=Age[Gender=="f"], y=Time[Gender=="f"],  pch=19, col=2)
legend("topright", title="Gender", legend=c("Male", "Female"), pch=c(21,19), col=c(4,2))
detach(HoldingBreath)


###################################################
### chunk number 31: 21TextbooksScatterPlotByCover
###################################################
#line 254 "Ch3.rnw"
attach(Textbooks)
plot(Price~Thickness, xlab="Thickness (mm)", ylab="Price (A$)", main="Textbooks, Price vs Thickness", type="n")
points(Price[Coverstyle=="H"]~Thickness[Coverstyle=="H"],   pch=22, col="blue")
points(Price[Coverstyle=="S"]~Thickness[Coverstyle=="S"], pch=19, col="green")
legend("bottomright", title="Cover", legend=c("Hard", "Soft"), pch=c(22,19), col=c("blue","green"))
detach(Textbooks)


###################################################
### chunk number 32: XDeathsTSPlot
###################################################
#line 272 "Ch3.rnw"
plot(ldeaths, ylim=c(0,4000), xlab="Year", ylab="Number of deaths", main="Deaths from lung diseases in the United Kingdom") 
lines(fdeaths, col="red")
lines(mdeaths, col="blue")
legend("topright", legend=c("Total", "Men", "Women"), col=c("black", "blue", "red"), lty=c(1,1,1))


