> # t-test for single mean
> print ("H0 := x0=Mu")
[1] "H0 := x0=Mu"
> print ("H1 := x0!=Mu")
[1] "H1 := x0!=Mu"
> alpha = 0.05
> Mu=100
> n=10
> x=c(70,120,110,101,88,83,95,98,107,100)
> x0=mean(x)
> s=sqrt(var(x))
> tTab=qt((1-alpha),(n-1))
> tTab
[1] 1.833113
16BEE0023
Varun Singh Inda
> tCal=(x0-Mu)/(s/sqrt(n-1))
> tCal
[1] -0.5885024
> if(abs(tCal)<abs(tTab)){
+ print("H0 is accepted and H1 is rejected ")
+ } else {
+ print("H0 is rejected and H1 is accepted ")
+ }
[1] "H0 is accepted and H1 is rejected "
> t.test(x,mu=Mu)
One Sample t-test
data: x
t = -0.62034, df = 9, p-value = 0.5504
alternative hypothesis: true mean is not equal to 100
95 percent confidence interval:
86.98934 107.41066
sample estimates:
mean of x
97.2

> # t-test for difference of means
> print("H0 := x1=x2")
[1] "H0 := x1=x2"
> print("H1 := x1!=x2")
[1] "H1 := x1!=x2"
> alpha = 0.01
> n1=8
> n2=6
> x1=166.9
> x2=170.3
> s1=8.29
> s2=8.50
> sigma=sqrt(((n1*s1^2)+(n2*s2^2))/(n1+n2-2))
> tTab=qt((1-alpha),(n1+n2-2))
> tTab
[1] 2.680998
> tCal=(x1-x2)/(sigma*sqrt((1/n1)+(1/n2)))
> tCal
[1] -0.6954801
> if(abs(tCal)<abs(tTab)){
16BEE0023
Varun Singh Inda
+ print("H0 is accepted and H1 is rejected ")
+ } else {
+ print("H0 is rejected and H1 is accepted ")
+ }
[1] "H0 is accepted and H1 is rejected "