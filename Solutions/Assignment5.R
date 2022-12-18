#q1
punif(10,0,60)

#q2
dexp(3,0.5)
x <- seq(0,5, by = 0.09) 
px <- dexp(x, rate = 1/2)
plot(x, px, xlab = "x", ylab = "f(x)", main = "PDF of Exp. dist. at lambda = 1/2")


pexp(3,0.5)

cx=pexp(x, rate = 1/2)
plot(x, cx, xlab = "x", ylab = "f(x)", main = "PDF of Exp. dist. at lambda = 1/2")


rx=rexp(1000,0.5)
plot(density(rx), xlab = "x", ylab = "f(x)", main = "PDF of Exp. dist. at lambda = 1/2")

#q3
dgamma(3,2,scale=1/3)
1-pgamma(1,2,3)
qgamma(0.70,2,3)

