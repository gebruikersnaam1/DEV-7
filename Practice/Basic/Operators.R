oneTo20 = c(1:20) 

isEven = oneTo20 %% 2 == 0 #modulus / 2 for all items
isEven #the list becomes True and False

#instead of selecting 1 or two, we can put a condition in it
justEvens = oneTo20[oneTo20 %% 2 == 0] 
justEvens

#print false or tru
cat("TRUE && FALSE = ", T && F, "\n")
cat("TRUE || FALSE = ", T || F, "\n")
cat("!TRUE  ", !T, "\n")

#decision making
age = 33
if(age >= 30){
print("A") #it isn't python! and this is proof
} else if(age >= 18){ #else if needs to be on the same line
  print("B")
} else{ #else needs to be on the same line
  print("C")
}

#switch!
course = "Development"
switch(course,
       "Development" = print("Acceptable"),
       "Analyse" = print("Bad"),
       "SLC" = print("It is a joke"),
       "Skills" = print("Why?"),
       "'Keuzevak'" = print("Why"),
       print("Ain't no course like that")
       )

#string operators
str1 = "Timmy"
nchar(str1) #count the characters
sprintf("Tim > Tommy :%s", "Tim" > "Tommy")
sprintf("Tim < Tommy :%s", "Tim" < "Tommy")
sprintf("Tim == Tommy :%s", "Tim" == "Tommy")

#factor
direction = c("Up","Left","Right","Down","Left","Up")
#create levels with all possible values
factorDir = factor(direction)
is.factor(factorDir) #is this var a factor
levels(x=factorDir)
#define and order
dow = c("Mon","Tues","Wed","Thur","Fri","Sat","Sun")
wDays = c("Mon","Tues","Wed","Fri")
wdFact = factor(x=wDays,levels=dow, ordered=T)
wdFact


#looping
num = 1
repeat{
  print(num)
  num =  num + 1
  if(num>5){ #stop the repeat if num is to high
    break 
  }
}
#while
#this example we only print the even numbers
num = 5
while(num > 0){
  num = num -1
  if(num %% 2 == 0){
    next #next if condition is met
  }
  print(num)
}

#for loop
oneTo5 = 1:5
for(i in oneTo5){
  print(i)
}