###################################################
### chunk number 1: setup
###################################################
#line 7 "Ch5.rnw"
source("GenericSettings.R")


###################################################
### chunk number 2: 
###################################################
#line 16 "Ch5.rnw"
data(PopSong, package="MindOnStats")
str(PopSong)


###################################################
### chunk number 3: 
###################################################
#line 22 "Ch5.rnw"
PopSong01 =PopSong[PopSong$Year==2001,]
str(PopSong01)


###################################################
### chunk number 4: 
###################################################
#line 27 "Ch5.rnw"
attach(PopSong01)
tapply(Genre, Genre, length)
length(Genre)
tapply(Genre, Genre, length)/length(Genre)


###################################################
### chunk number 5: 1GenreBarPlot
###################################################
#line 35 "Ch5.rnw"
plot(Genre, xlab="Genre", ylab="Count", main="Counts of Songs by Genre for 2001")


###################################################
### chunk number 6: 
###################################################
#line 39 "Ch5.rnw"
detach(PopSong01)


###################################################
### chunk number 7: 
###################################################
#line 47 "Ch5.rnw"
aggregate(Position~Chart+Country+Author, data=PopSong, FUN=length)


###################################################
### chunk number 8: 
###################################################
#line 55 "Ch5.rnw"
pchisq(5.935, df=2, lower.tail=FALSE)


###################################################
### chunk number 9: 
###################################################
#line 60 "Ch5.rnw"
chisq.test(x=c(42, 49, 69), p=c(0.22, 0.4, 0.38))


###################################################
### chunk number 10: 
###################################################
#line 70 "Ch5.rnw"
attach(PopSong)
tapply(Position, list(Genre, Chart), length)
detach(PopSong)


###################################################
### chunk number 11: 
###################################################
#line 76 "Ch5.rnw"
attach(PopSong)
NewGenre = Genre
levels(NewGenre)
levels(NewGenre)[1]="AnHRock"
levels(NewGenre)[4]="AnHRock"
levels(NewGenre)
tapply(Position, list(NewGenre, Chart), length)
detach(PopSong)


###################################################
### chunk number 12: 
###################################################
#line 88 "Ch5.rnw"
chisq.test(NewGenre, PopSong$Chart)


###################################################
### chunk number 13: 
###################################################
#line 93 "Ch5.rnw"
BreastCancer = matrix(c(166,8340, 124, 7978), nrow=2, byrow=TRUE)
dimnames(BreastCancer)[[1]] = c("Hormones", "Placebo")
dimnames(BreastCancer)[[2]] = c("Yes", "No")
BreastCancer


###################################################
### chunk number 14: 
###################################################
#line 100 "Ch5.rnw"
chisq.test(BreastCancer)


