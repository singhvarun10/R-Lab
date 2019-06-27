# Z–Test for Single Proportion
> print("H0 := p=P")
[1] "H0 := p=P"
> print("H1 := p!=P")
16BEE0023
Varun Singh Inda
[1] "H1 := p!=P"
> alpha=0.05
> ZTab=qnorm(1-alpha)
> ZTab
[1] 1.644854
> P=20/100
> n=400
> p=50/400
> ZCal=(p-P)/sqrt(P*(1-P)/n)
> ZCal
[1] -3.75
> if(abs(ZCal)<abs(ZTab)) {
+ print("H0 is accepted and H1 is rejected")
+ } else {
+ print("H0 is rejected and H1 is accepted")
+ }
[1] "H0 is rejected and H1 is accepted"



# Z–Test for Single Mean
> print("H0 := x0=Mu")
[1] "H0 := x0=Mu"
> print("H1 := x0!=Mu")
[1] "H1 := x0!=Mu"
> alpha=0.01
> ZTab=qnorm(1-alpha)
> ZTab
[1] 2.326348
> Mu=3.23
> Sigma=2.31
> n=900
> x0=3.47
> ZCal=(x0-Mu)/(Sigma/sqrt(n))
> ZCal
[1] 3.116883
> if(abs(ZCal)<abs(ZTab)) {
+ print("H0 is accepted and H1 is rejected")
+ } else {
16BEE0023
Varun Singh Inda
+ print("H0 is rejected and H1 is accepted")
+ }
[1] "H0 is rejected and H1 is accepted"