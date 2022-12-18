#q1 a
coin<-c('gold','silver','bronze')
data <-c()

data[1:20]<- coin[1]
data[21:50]<- coin[2]
data[51:100]<- coin[3]

print(sample(data,10))

#q1 b
data<-c('success','failure')
print(sample(data,10,replace=TRUE,prob=c(0.9,0.1)))


#q2
n <-50

pbirthday(n, classes=365, coincident=2)


#or 
birthday<-function(n=0){
  return(1-choose(365,365-n)*factorial(n)/365^n)
}
print(birthday(as.integer(readline())))



#q3  x is |  , u is union
prob <- function(pA, pB, pBA) {
  pAgB <- pA * pBA / pB
  return(pAgB)
}
pRain <- 0.2
pCloudy <- 0.4
pCloudyRain <- .85
prob(pRain, pCloudy, pCloudyRain)


#q4
data(iris)
head(iris,5)
str(iris)
range(iris$Sepal.Length)
mean(iris$Sepal.Length)
median(iris$Sepal.Length)
quantile(iris$Sepal.Length,0.25)
quantile(iris$Sepal.Length,0.75)
interquart=quantile(iris$Sepal.Length,0.75)-quantile(iris$Sepal.Length,0.25)
print(interquart)
sd(iris$Sepal.Length)
var(iris$Sepal.Length)
summary(iris)

#q5
mode <- function(v){
  mele<-0
  lcount<-0
  g<-length(v)-1
  for (i in 1:g) {
    ccount<-1
    k<-i+1
    for (j in k:length(v)) {
      if(v[i]==v[j])
        ccount=ccount+1
    }
    if(ccount>lcount){
      lcount<-ccount
      mele<-v[i]
    }
  }
  return(mele)
}

v <- c(2,1,2,5,1,2,3,4,1,2,2,2,3,3)
mode(v)
