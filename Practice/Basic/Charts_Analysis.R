#piechart
#content
foodPref = c(15,35,10,25,15)
foodLables = c("Spaghetti","Chicken curry","pancakes","nasi","fries")
#file name
png(file="food_pref.png")
#random colors! (kind of...)
colors = rainbow(length(foodPref))
#piechart
pie(foodPref,foodLables,main="Food Prefs",col=colors)
#legend
legend("topright",c("Spaghetti","Chicken curry","pancakes","nasi","fries"),
       cex=0.8, #text
       fill=colors)
#save piechart
dev.off()

#3d piechart
#piechart
library(plotrix)
#content
foodPref = c(15,35,10,25,15)
foodLables = c("Spaghetti","Chicken curry","pancakes","nasi","fries")
#file name
png(file="3d_food_pref.png")
#piechart
pie3D(foodPref,labels=foodLables,main="Food Prefs",
      explode = 0.1,
      start=pi/2, #just do it
      labelcex=0.8)
#save piechart
dev.off()

#bar charts
foodPref = c(15,35,10,25,15)
foodLables = c("Spaghetti","Chicken curry","pancakes","nasi","fries")
png(file="bar_chart_food_pref.png")
colors = rainbow(length(foodPref))
barplot(foodPref,names.arg=foodLables,
        xlab="Votes",ylab="Foodoptions",
        main="Food Prefs",
        col = colors
        )
dev.off()


#regression analysis
relation = lm(playerData$RBI~playerData$AVG)

# Create file 
png(file="RBI_AVG_Regression.png")

# Plot the chart
plot(playerData$AVG, playerData$RBI, 
     main="AVG & RBI Regression", 
     abline(lm(playerData$RBI~playerData$AVG)),
     xlab="AVG", ylab="RBIs")
# Save chart
dev.off()