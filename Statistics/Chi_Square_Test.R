> # Chi-Square Test for Goodness of Fit
> message(sprintf("H0 := The accidents are uniformly distributed over the week"))
H0 := The accidents are uniformly distributed over the week
> message(sprintf("H1 := The accidents are not uniformly distributed over the week"))
H1 := The accidents are not uniformly distributed over the week
> alpha=0.05
> OF=c(8, 14, 16, 12, 11, 14, 9)
> Tot=sum(OF)
> n=length(OF)
> EV=Tot/n
> EF=rep(EV,n)
> ChiTab=qchisq((1-alpha),(n-1))
> ChiTab
16BEE0023
Varun Singh Inda
[1] 12.59159
> ChiCal=sum(((OF-EF)^2)/EF)
> ChiCal
[1] 4.166667
> if(abs(ChiCal)<abs(ChiTab)) {
+ message(sprintf("H0 is accepted and H1 is rejected"))
+ } else {
+ message(sprintf("H0 is rejected and H1 is accepted"))
+ }
H0 is accepted and H1 is rejected
> # Chi-Square Test for Independence of Attributes
> message(sprintf("H0 := There is no association between gender and attitude"))
H0 := There is no association between gender and attitude
16BEE0023
Varun Singh Inda
> message(sprintf("H1 := There is an association between gender and attitude"))
H1 := There is an association between gender and attitude
> alpha=0.05
> OF=matrix(c(1154 , 475, 243, 1103, 442, 342),nrow=2,ncol=3)
> Dim=dim(OF)
> m=Dim[1]
> n=Dim[2]
> EF=matrix(nrow=m,ncol=n)
> for (i in 1:Dim[1])
+ {
+ for (j in 1:Dim[2])
+ {
+ EF[i,j]=sum(OF[i,])*sum(OF[,j])/sum(OF)
+ }
+ }
16BEE0023
Varun Singh Inda
> ChiTab=qchisq((1-alpha),(m-1)*(n-1))
> message(sprintf("Tabulated Chi-Square Value = %0.4f",ChiTab))
Tabulated Chi-Square Value = 5.9915
> ChiCal=sum(((OF-EF)^2)/EF)
> message(sprintf("Calculated Chi-Square Value = %0.4f",ChiCal))
Calculated Chi-Square Value = 843.9024
> if ((abs(ChiCal)<abs(ChiTab))){
+ message(sprintf("H0 is accepted and H1 is rejected"))
+ message(sprintf("Attributes are independent"))
+ } else {
+ message(sprintf("H0 is rejected and H1 is accepted"))
+ message(sprintf("Attributes are not independent"))
+ }
H0 is rejected and H1 is accepted
Attributes are not independent
16BEE0023
Varun Singh Inda
> # Chi-Square Test for Independence of Attributes - By Calling Function
> ChiSquareIA=function(OF)
+ {
+ Dim=dim(OF)
+ m=Dim[1]
+ n=Dim[2]
+ EF=matrix(nrow=m,ncol=n)
+ for (i in 1:Dim[1])
+ {
+ for (j in 1:Dim[2])
+ {
+ EF[i,j]=sum(OF[i,])*sum(OF[,j])/sum(OF)
+ }
+ }
+ ChiTab=qchisq((1-alpha),(m-1)*(n-1))
16BEE0023
Varun Singh Inda
+ message(sprintf("Tabulated Chi-Square Value = %0.4f",ChiTab))
+ ChiCal=sum(((OF-EF)^2)/EF)
+ message(sprintf("Calculated Chi-Square Value = %0.4f",ChiCal))
+ if ((abs(ChiCal)<abs(ChiTab))){
+ message(sprintf("H0 is accepted and H1 is rejected"))
+ message(sprintf("Attributes are independent"))
+ } else {
+ message(sprintf("H0 is rejected and H1 is accepted"))
+ message(sprintf("Attributes are not independent"))
+ }
+ }
> ChiSquareIA(OF)
Tabulated Chi-Square Value = 5.9915
Calculated Chi-Square Value = 843.9024
H0 is rejected and H1 is accepted
Attributes are not independent