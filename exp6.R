library(pracma)

cfunc=function(x,y){
  2*(2*x+3*y)/5
}
integral2(cfunc,0,1,0,1)
integral2(cfunc,0,1,0,1)$Q
integral2(cfunc,0,1,0,1)$error

cfunc2=function(y){
  2*(2+3*y)/5
}

integral(cfunc2,0,1)


cfunc3=function(x){
    2*(2*x)/5
}

integral(cfunc3,0,1)

cfunc4=function(x,y){
  (x*y)*cfunc(x,y)
}

integral2(cfunc4,0,1,0,1)$Q


cfunc5=function(x,y){
  (x+y)/30
}

x=c(0,1,2,3)
y=c(0,1,2)
m=matrix(c(cfunc5(0,0:2),cfunc5(1,0:2),cfunc5(2,0:2),cfunc5(3,0:2)),nrow=4,ncol=3,byrow = TRUE)
m
sum(m)


h=apply(m,1,sum)
h

g=apply(m,2,sum)
g

m[1,2]/g[2]

Ex=sum(x*h)
Ey=sum(y*g)
Ex
Ey

M2x=sum(x*x*h)
M2y=sum(y*y*g)
M2x
M2y

varx=M2x-(Ex*Ex)
varx

vary=M2y-(Ey*Ey)
vary


cfunc6=function(x,y){
  x*y*cfunc5(x,y)
}

Mxy=matrix(c(cfunc6(0,0:2),cfunc6(1,0:2),cfunc6(2,0:2),cfunc6(3,0:2)),nrow=4,ncol=3,byrow = TRUE)
Mxy

Exy=sum(Mxy)
Exy

covxy=Exy-(Ex*Ey)
covxy


cor=covxy/sqrt(varx*vary)
cor