#Linear Regression

> x=c(4.7,8.2,12.4,15.8,20.7,24.9,31.9,35.0,39.1,38.8)
> y=c(4.0,8.0,12.5,16.0,20.0,25.0,31.0,36.0,40.0,40.0)
> reg=lm(x~y)
> reg
Call:
lm(formula = x ~ y)
Coefficients:
(Intercept) y
0.7508 0.9634

#Multiple Regression

> x1=c(30,40,20,50,60,40,20,60)
> x2=c(11,10,7,15,19,12,8,14)
> y=c(110,80,70,120,150,90,70,120)
> d=data.frame(y,x1,x2)
> d
y x1 x2
1 110 30 11
2 80 40 10
3 70 20 7
4 120 50 15
5 150 60 19
6 90 40 12
7 70 20 8
8 120 60 14
> multireg=lm(y~x1+x2,data=d)
> multireg
Call:
lm(formula = y ~ x1 + x2, data = d)
Coefficients:
(Intercept) x1 x2
16.8314 -0.2442 7.8488