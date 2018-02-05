#matrices
matrix1 = matrix(data=c(1,2,3,4))
matrix1 #a matrix with one column

#multiple columns
matrix2 = matrix(data=c(1,2,3,4), nrow=2, ncol=2)
matrix2 #we first fill up the rows, than the columns

#different way of sorting 
matrix3 = matrix(data=c(1,2,3,4), nrow=2, ncol=2, byrow=T)
matrix3  #we first fill up the columns, than the rows

#what is it
dim(matrix3) #two by two

matrix3[1,2] #first row and second column

matrix3[1,]#get the whole row
matrix3[,2]#get only the column

#different
matrix4 = rbind(1:3,4:6,7:9)
matrix4 #1:3 will be a row, with three columns

matrix4[1,] = c(10,11,30) #change the first row
matrix4


#Multidimensional Arrays
array1 = array(data=1:9, dim=c(2,2,2))
array1
#getting different values
array1[1,2,2] #?


#functions
#basic add function
getSum = function(par1,par2){
  return (par1+par2)
}
sprintf("2 + 2 = %d", getSum(2,2))

#function to make a string to a list
makeList = function(theString){
  return(strsplit(theString," "))
}
madeList = makeList("Hello Tim!")

#parameters are optional..
missFunc = function(x){
  if(missing(x)){#parameter is missing
    return("Give me a parameter")
  }else{
    return(x)
  }
}
missFunc()
missFunc(5)

#multiple parameters!
getSumMore = function(...){
  numList = list(...)
  sum = 0
  for(i in numList){
    sum = sum + i
  }
  sum
}
x = getSumMore(5,6,9,10)
x

#Anonymous Functions
numList = 1:10
dbList = (function(x) x*2)(numList)
dbList

#?
power= function(exp){
  function(x){
    x ^ exp
  }
}
cubed = power(3)
cubed(2)
cubed(1:5)

#store function
addFunc = list(
  add2 = function(x) x + 2,
  add3 = function(x) x + 3
)
#we can select which function we do
addFunc$add2(5)
