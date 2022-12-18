getwd()

setwd("C:/Storage/WORKSPACE/GitHub/R-Assignments/Ques Sets")

getwd()

df=read.csv("C:/Storage/WORKSPACE/GitHub/R-Assignments/Ques Sets/Clt-data.csv")

colnames(df)

head(df,10)

nrow(df)
ncol(df)
a=mean(df$Wall.Thickness)
print(a)

hist(df$Wall.Thickness)

abline(v=a, col = "red", lwd = 3, lty = 1)


i=1
out<-c()
for(i in 1:9000){
  new_10=sample(df$Wall.Thickness,10,replace=TRUE,prob=NULL)
  out=append(out, mean(new_10))
}
mean(out)
hist(out)


i=1
out<-c()
for(i in 1:9000){
  new_50=sample(df$Wall.Thickness,50,replace=TRUE,prob=NULL)
  out=append(out, mean(new_50))
}
mean(out)
hist(out)

i=1
out<-c()
for(i in 1:9000){
  new_500=sample(df$Wall.Thickness,500,replace=TRUE,prob=NULL)
  out=append(out, mean(new_500))
}
mean(out)
hist(out)

i=1
out<-c()
for(i in 1:9000){
  new_9000=sample(df$Wall.Thickness,9000,replace=TRUE,prob=NULL)
  out=append(out, mean(new_9000))
}
mean(out)
hist(out)


