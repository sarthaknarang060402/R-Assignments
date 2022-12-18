#q1
a<-dbinom(7,12,prob = (1/6)) 
b<-dbinom(8,12,prob = (1/6)) 
c<-dbinom(9,12,prob = (1/6)) 
d<-a+b+c 
d

sum=0 
for (i in 7:9) { 
  sum=sum+dbinom(i,12,prob = (1/6)) 
  } 
sum


f<-pbinom(9,size = 12,prob = (1/6))-pbinom(6,size = 12,prob = (1/6)) 


diff(pbinom(c(6,9),12,prob = (1/6))) 


#q2
1-pnorm(84,72,15.2)



#q3
dpois(0,5)

ppois(50,50)-ppois(47,50)

diff(ppois(c(47,50),50))

#q4
dhyper(3,17,233,5)


#q5
x=0:31
pdfx=dbinom(x,31,0.447)
plot(x,pdfx)

cdfx=pbinom(x,32,0.447)
plot(x,cdfx)

mean=sum(x*pdfx)
mean 

variance=sum(sum(x*x*pdfx)-mean*mean)
variance

sd=sqrt(variance)
sd
