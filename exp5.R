one=punif(45,0,60,lower.tail = FALSE)
one

two=punif(30,0,60)-punif(20,0,60)
two

diff(punif(c(30,40),0,60))

dexp(3,0.5)

a=seq(0,5)

plot(a, dexp(a,0.5) ,type="l",main="exp 5 graph" , ylab="ylab", xlab="xlabel")

dexp(3,0.5)


plot(a,pexp(a,0.5),type="l")

pexp(5,0.5)

rexp(1000,0.5)

dgamma(3,shape=2,scale=1/3)

pgamma(1,shape=2,scale=1/3,lower.tail=FALSE)

qgamma(0.70,shape=2,rate=1/3)

