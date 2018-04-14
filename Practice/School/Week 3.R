#random dice
dice <- function(){sample(c(1:6),size=1, replace=TRUE)}
dice()

#random dice - rigged
dice <- function(){sample(c(1,2,3,4,5,6,6,6),size=1, replace=TRUE)}
dice()
dice()
dice()
dice()
dice()
#random dice - rigged... but auto retry it... for 100 times
dice <- function(n){sample(c(1,2,3,4,5,6,6,6),size=n, replace=TRUE)}
dice(100)

#random sum? Not wokring
#sum(sample(c(1,2,3,4,5,6),size=2, replace=TRUE))