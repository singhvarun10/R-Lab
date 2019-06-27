#Mean

> h=10
> x=seq(175,245,h)
> f=c(52,68,85,92,100,95,70,28)
> M=(sum(x*f))/sum(f)
> M

#Median

> h=10
> x=seq(175,245,h)
> f=c(52,68,85,92,100,95,70,28)
> fd=data.frame(x,f)
> cf=cumsum(f)
> n=sum(f)
> mc=min(which(cf>=n/2))
> mcf=f[mc]
> c=cf[mc-1]
> l=x[mc]-h/2
> md=l+(((n/2)-c)/mcf)*h
> md
[1] 209.7826

#Mode

> h=10
> x=seq(175,245,h)
> f=c(52,68,85,92,100,95,70,28)
> fd=data.frame(x,f)
> mc=which(f==max(f))
> mcf=f[mc]
> f1=f[mc-1]
> f2=f[mc+1]
> l=x[mc]-h/2
> mo=l+((mcf-f1)/(2*mcf-f1-f2))*h
> mo
[1] 216.1538

#Variance, Standard Deviation and Coefficient of Variation

> h=10
> x=seq(175,245,h)
> f=c(52,68,85,92,100,95,70,28)
> N=sum(f)
> M=(sum(x*f))/sum(f)
> M
[1] 208.9831
> Var=((1/N)*(sum(x^2*f)))-((1/N)*(sum(x*f)))^2
> Var
[1] 388.0336
> SD=sqrt(Var)
> SD
[1] 19.69857
> CV=100*(SD/M)
> CV
[1] 9.425917

