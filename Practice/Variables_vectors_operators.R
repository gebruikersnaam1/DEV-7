#some do it this way my.num is possible.
# But they have to start with a number
#you can also use <- instead of =, as example mynum <- 5
#var are dynamic and can be int,string, etc.
#
mynum = 316 
print(mynum)
print(class(mynum)) #numeric
print(class(316)) #still numeric
print(class(4L)) #integer
print(class(T)) #logical
print(class("test")) #charachter
print(class(charToRaw(("test")))) #raw

#two + two + five?
sprintf("4 + 4 = %d", 4+4)
sprintf("4 + 3 = %d", 4-3)
sprintf("3 * 3 = %d", 3*3)
sprintf("9 / 3 = %1.3f", 9 /3)
sprintf("4 / 5 = %1.3f", 4 /5)
sprintf("5 %% 4 = %d", 5%%4)
sprintf("3^2 = %d", 3 ^ 2)

#Vectors
numbers = c(3,2,0,1,8)
numbers #shows all ... prints all?
numbers[1] #prints first
length(numbers) #prints numbers
numbers[length((numbers))]
numbers[-1] #not showing the first one
numbers[c(1,2)] #shows the first two
numbers[2:3] #shows 
numbers[5] = 1 #replace the values
numbers[c(4,5)] #we replace 4 and 5 for two
numbers

sort(numbers) #normal
sort(numbers,decreasing = T)
sort(numbers,decreasing = F)

oneToTen = 1:10 #create a sequences to one to 10
add3 = seq(from =3, to=30, by =3) #table of three
oneToTen
add3

#even isn't even of nee toch niet
evens = seq(from = 2, by=2, length.out=10)
evens
#ask if 4 is even
sprintf("4 in evens %s", 4%in% evens)

rep(x=2, times=5, each=2)
rep(x=c(1,2,3), times=5, each=2)
