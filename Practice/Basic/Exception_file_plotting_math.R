#excepetion handling
divide = function(num1, num2){
  tryCatch(
    num1 / num2,
    error = function(e){
      if(is.character((num1)) || is.character(num2)){
        print("Cannot be divide")
      }
    }
  )
}
divide(10,"5")
divide(10,10)

#reading written file
people = read.table(
  file = file.choose(), #pop-up to select the file, you can also select the file right away, by defining the path
  header=T, sep=" ", #sep is to divine the strings
  na.strings="@", #is to say this column has no value
  stringsAsFactors = F #often false?
)
people
tail(people)
#add row in textfile
record = data.frame(
  fname="Hulk",
  lname="Hogan",
  gender="male"
)
people = rbind(people,record)
#update file 
people[6,1] = "Testie"

write.table(x=people, file=file.choose(),
            sep=" ",na="@",
            quote=F, #we don't want things in quotes
            row.names=F #we don't want to give rows names, just work with number
)

#plotting
#plot 1
xy1 = matrix(data=c(1,2,3,4,5, #this is x
                1,2,3,4,5), #this is y
                nrow=5,
                ncol=5)
plot(xy1)
#draw a line in graph
x2 = c(1,2,3,4,5)
y2 = c(1,2,3,4,5)
plot(x2,y2,type="b", #options is l,b,o
     main="My plot", #name
     xlab="x axis", #name
     ylab="y axix", #name y
     col="orangered1" #type in console and type in "colors()"
)  
#"complex" graph
x2 = c(1,2,3,4,5)
y2 = c(1,2,3,4,5)
plot(x2,y2,type="o", #options is l,b,o
     pch=2, #optional
     lty= 2,
     main="My plot", #name
     xlab="x axis", #name
     ylab="y axix", #name y
     col="orangered1", #type in console and type in "colors()"
     xlim=c(-8,8),
     ylim=c(-8,8)
     )  
#new plot wit line in between
x3 = c(1,2,3,4,5)
y3 = c(1,2,3,4,5)
plot(x3,y3,type="b")
abline(h=c(2,4), col="red",lty=2) #horizontal line
#segment will box stuff
segments(x0=c(2,4),y0=c(2,2),x1=c(2,4),y1=c(4,4),
         col="red",lty=2)
#draw arrows
arrows(x0=1.5,y0=4.5,x1=2.7,y1=3.25,col="blue")
#prints text
text(x=1.25,y=4.75,labels="Center")

#new plot with data provided by R
plot(faithful) #stored data from R
#get a few points and give them a different color
erruptions4 = with(faithful,faithful[eruptions>4,])
points(erruptions4, col="red", pch=3) 


#Math Functions
sqrt(x=100)
log(x=4, base=2)
exp(x=2)
sum(c(1,2,3))
ranD1 = c(1,5,6,7,10,16)
mean(ranD1)
median(ranD1)
range(randD1)
ceiling(4.5)
floor(4.5)
cumsum(c(1,2,3))
cumprod(c(1,2,3))
cummax(c(7:9,4:6,1:3))
cummin(c(7:9,4:6,1:3))
sample(0:1,10,replace=T) 