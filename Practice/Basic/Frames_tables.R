#data frame (like a table)
studentData = data.frame(
    name=c("Tim","Tom","Tommy","Timmy"),
    studentnumber = c(09,24,27,0),
    stringsAsFactors = F #important but why?
)
studentData 
studentData[1,1]
studentData[1:3,2] #get only the studentnumbers of the first three students
#?
dim(studentData)
#new student
newStud = data.frame(name="Eibert",studentnumber=44)
studentData = rbind(studentData,newStud)
studentData
#add a new column
debt = c(5000,6000,9000,4000,0)
studentData = cbind(studentData,debt)
studentData

#check if money is own
owesMoney = studentData[studentData$debt > 0,]
owesMoney #no eibert! because he has no debt 
