## Exercise 1 - Variables 
#a
3+4
#b
4 + 5 == 21 
#c
x <- 2
y <- 3.5
z <- 7
#d
typeof(x)
typeof(y)
typeof(z)
#e
x*y*z
#f
x*y*z == 49
#g
s <- "alexander"
#h
nchar(s)

##Exercise 2 - Vectors 
#a
x = 1:10
#b
length(x)
#c
x * 1.2
#d
x[1:5] * 1.2
#e
barplot(x)
#f
x = 0:10
#g
plot(x,x,type="b")
#h
x = 0:10
y = 3*x+2
plot(x,y,type="b")
#i
x = seq(from=0,to=2*pi,length.out=250) 
y = sin(x)
plot(x,y,type="b")
#j
plot(x,y,type="b",main="title")
#k
curve(cos(x),from=0,to=2*pi)

##Exercise 3 - Factors and data-frames 
#a
air = read.csv(file.choose())
#b
typeof(air)
#c
names(air)
#d
length(air)
#e
#"The average of ozone is NA because there are some NA values in the ozone vector.  
# The result of computations involving NA values (like the sum) is another NA value. "
#f
ozone = air$Ozone
mean(ozone,na.rm=TRUE)
#G
mean(air$Temp)
#h
sum(air$Temp < 67)
#i
sum(air$Temp >= 67)
#j
132+21
#k
hot = air$Temp > 80 
ozoneWarm = ozone[hot]
ozoneCold = ozone[!hot]
mean(ozoneWarm,na.rm=T)

##Summary statistics
#i
x = sample(1,30,98,replace=T)
#j
x2 = c(x,50,-5)
#k
summary(x)
summary(x2)
#l?
#m?
#n?

##Visualizations
library(ISwR)
attach(eba1977) 
#a
mean(cases)
#b
boxplot(cases)
#c
summary(cases)
#d
summary(eba1977)
