#sum is the function name
sum = function(number1,number2,o){
  switch(o, #o is the 'searchterm'
         "add" = return(number1+number2), #if is "add" than return ()
         "min" = return(number1-number2), # ^ 
         "mul" = return(number1*number2),
         return("error") #if the o doesn't match any of the cases, error will be returned
        )
}
startLine <- "On this line: " #a var... <- is equal to =
print(paste0(startLine, sum(5,5,"add"))) #two lines put together
cat(startLine, sum(5,5,"add")) #two lines put together