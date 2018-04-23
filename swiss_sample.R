data(swiss)
par(mfrow=c(2,2)) 
fit<-lm(Fertility~.,data=swiss)
plot(fit)


#### Plot variance
n<-100;x<-c(10,rnorm(n))
y<-c(10,c(rnorm(n))) 
plot(x,y,frame=FALSE,cex=2,pch=21,bg="lightblue",col="black") 
abline(lm(y~x))


#### diagnostic values

fit<-lm(y~x) 
round(dfbetas(fit)[1:10,2],3)
round(hatvalues(fit)[1:10],3)


round(dfbetas(fit2)[1:10,2],3)


myurl <- "http://www4.stat.ncsu.edu/~stefanski/NSF_Supported/Hidden_Images/orly_owl_files/orl"
dat<-read.table(myurl)



myfile <- paste0(getwd(),"/","ravensData.rda")

download.file("https://dl.dropboxusercontent.com/u/7710864/data/ravensData.rda" ,destfile= myfile,method="curl")
load("ravensData.rda") 
head(ravensData)