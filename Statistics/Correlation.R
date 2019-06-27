#Correlation

> x=c(21,23,30,54,57,58,72,78,87,90)
> y=c(60,71,72,83,110,84,100,92,113,135)
> mx=mean(x)
> my=mean(y)
> sdx=sqrt(var(x))
> sdy=sqrt(var(y))
> cov1=var(x,y)
> cov=cov(x,y)
> cor=cov/(sdx*sdy)
> cor
[1] 0.8775417
> cor1=cor(x,y)
> cor1
[1] 0.8775417
> cor2=cor.test(x,y)
> cor2

$Rank Correlation

> x=c(10,15,12,17,13,16,24,14,22)
> y=c(30,42,45,46,33,34,40,35,39)
> n=length(x)
> u=rank(x)
> v=rank(y)
> sumD2=sum((u-v)^2)
> rankcor=1-((6*sumD2)/(n*(n^2-1)))
> rankcor
[1] 0.4