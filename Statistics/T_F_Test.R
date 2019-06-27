# t-Test :-
> print("H0 := x1=x2")
[1] "H0 := x1=x2"
> print("H1 := x1!=x2")
[1] "H1 := x1!=x2"
> alpha=0.05
> s1=c(19,23,16,24,17,18,20,18,21,19,20)
> s2=c(17,24,20,24,20,22,20,20,18,22,19)
> D=s1-s2
> d=mean(D)
> n=length(D)
> s=sqrt(var(D))
> tTab=qt((1-alpha),(n-1))
16BEE0023
Varun Singh Inda
> tTab
[1] 1.812461
> tCal=d/(s/sqrt(n-1))
> tCal
[1] -1.313064
> if(abs(tCal)<abs(tTab)) {
+ print("H0 is accepted and H1 is rejected")
+ } else{
+ print("H0 is rejected and H1 is accepted")
+ }
[1] "H0 is accepted and H1 is rejected"

# t-Test :-
> print("H0 := x1=x2")
[1] "H0 := x1=x2"
> print("H1 := x1!=x2")
[1] "H1 := x1!=x2"
> alpha=0.05
> s1=c(19,23,16,24,17,18,20,18,21,19,20)
> s2=c(17,24,20,24,20,22,20,20,18,22,19)
> D=s1-s2
> d=mean(D)
> n=length(D)
> s=sqrt(var(D))
> tTab=qt((1-alpha),(n-1))
16BEE0023
Varun Singh Inda
> tTab
[1] 1.812461
> tCal=d/(s/sqrt(n-1))
> tCal
[1] -1.313064
> if(abs(tCal)<abs(tTab)) {
+ print("H0 is accepted and H1 is rejected")
+ } else{
+ print("H0 is rejected and H1 is accepted")
+ }
[1] "H0 is accepted and H1 is rejected"