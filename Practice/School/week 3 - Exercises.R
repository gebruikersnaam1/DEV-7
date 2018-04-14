n = 25
p = 0.25
1 - pbinom(0,n,p)

n = 20
p = 1/3
dbinom(12,n,p)

n = 50
p = 1 - 1/100 # = 1 - 0.01 = 0.99 # de kans dat een product heel blijft is 0.99
dbinom(48,n,p)

n = 3
p = 2/6
barplot(dbinom(0:3,n,p))

500 * 0.20 

n = 60
p = 1/3
n*p *(1-p)#variance
sqrt(n*p*(1-p)) #deviation

n = 15
p = 0.8
sqrt(n*p*(1-p))
n * p

n = 500
p = 0.75
1 - pbinom(399,n,p)

n = 20
p = 1/7
1 - pbinom(2,n,p)

n = 1000
p = 1/2
dbinom(500,n,p)
pbinom(490,n,p)

n = 6
p = 0.4
dbinom(3,n,p)