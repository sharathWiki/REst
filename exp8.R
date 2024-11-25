# data=read.csv(file.choose())

# # View(data)
# # dim(data)

# nrow(data)

# head(data,10)
# m=mean(data$Wall.Thickness)
# m

# hist(data$Wall.Thickness,col='pink',main='histogram for wall thickness',xlab='wall thickness')
# abline(v=m,col='red',lty=1)

# s10=c()

# n=9000

# for(i in 1:n){
#   s10[i]=mean(sample(data$Wall.Thickness,10,replace=TRUE))
# }

# hist(s10,col='lightgreen',main='sample size',xlab='wall thickness')
# abline(v=mean(s10),col='red')

# s30=c()
# s50=c()
# s500=c()

# for(i in 1:n){
#   s30[i]=mean(sample(data$Wall.Thickness,30,replace=TRUE))
#   s50[i]=mean(sample(data$Wall.Thickness,50,replace=TRUE))
#   s500[i]=mean(sample(data$Wall.Thickness,100,replace=TRUE))
# }

# par(mfrow=c(1,3))


# hist(s30,col='orange',main='sample size = 30',xlab='wall thickness')
# abline(v=mean(s30),col='red')


# hist(s50,col='coral',main='sample size =50 ',xlab='wall thickness')
# abline(v=mean(s50),col='red')


# hist(s500,col='green',main='sample size =500',xlab='wall thickness')
# abline(v=mean(s500),col='red')


age=c( 58, 69, 43, 39, 63, 52, 47, 31, 74, 36)
cholestrol=c( 189,235, 193, 177, 154, 191, 213, 165, 198, 181)

plot(age,cholesterol,main='',xlab='',ylab='',pch=24)

rel=lm(cholestrol~age)
abline(rel,col='coral')
summary(rel)

a=data.frame(age=60)
predict(rel,a)