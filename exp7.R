  n=100
  df=n-1

  t_values=rt(n,df)

  hist(t_values)

help(runif)
  df2=c(2,10,25)
  par(mfrow=c(1,3))
  for(df in df2){
    chi_values=rchisq(n,df2)
    hist(chi_values,main=paste('chi square with df = ',df),xlab='Values',col='lightblue')
  }
  par(mfrow=c(1,1))

  x=seq(-6,6,length.out=100)
  dfs=c(1,4,10,30)

  rt(x,dfs)

  plot(x,dt(x,df=dfs[4]),type='l',main='t dsitribution density functions',xlab='x',ylab='Density',col='blue',lwd=2)

  cols=c("red","green","purple","blue")

  for(i in 1:3){
    lines(x,dt(x,df=dfs[i]),col=cols[i])
  }

  legend("topright",legend=paste('df=',dfs),col=cols, lwd=2)


  qf(0.95,df1=10,df2=20)

  a015=pf(1.5,df1=10,df2=20)
  a015
  a15inf=pf(1.5,df1=10,df2=20,lower.tail=FALSE)
  a15inf

  quantiles=qf(c( 0.25,0.50,0.75,0.999),df1=10,df2=20)
  quantiles

  hist(rf(1000,df1=10,df2=20))
  # plot(seq(1,1000),rf(1000,df1=10,df2=20))
