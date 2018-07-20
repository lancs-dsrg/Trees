## CLOSING PLOTTING WINDOWS WILL MAKE THIS SCRIPT NOT FUNCTION PROPERLY

##data <- read.csv(".../practical/ToyotaCorolla.csv", header=TRUE)
data <- read.csv("/home/lowther1/Dropbox/lancsDSRG/CART/practical/ToyotaCorolla.csv", header=TRUE)

## Number of data observations
nrows = nrow(data)

## Have a look at the data structure
head(data)

##-------------------------------------------------------------------------------------------------
## Here we plot:
  ## Age of car Vs KM of car and colour code by the price of car

## We see that the most expensive cars are not very old, and they have low
## mileage (which you would expect)


## Age and KM are correlated as you would also expect

## Split the plotting window into two
x11()
layout(matrix(1:2,ncol=2))
## Create the heat map object
legend_image <- as.raster(matrix(heat.colors(nrows, alpha=1), ncol=1))
plot(c(0,2),c(0,1),type = 'n', axes = F,xlab = '', ylab = '', main = 'Colour Map (Price of Car)')
text(x=1.5, y = seq(0,1,l=5), labels = seq(min(data$Price),max(data$Price),l=5))
rasterImage(legend_image, 0, 0, 1,1)
## Plot Age Vs KM coloured by price
plot(data$KM, data$Age, pch=8, col= heat.colors(nrows, alpha=1)[order(data$Price,decreasing=TRUE)],
     main="Age Vs KM Coloured by Price of Car",
     xlab="Distance car has travelled",
     ylab="Age of Car")
##-------------------------------------------------------------------------------------------------
library("rpart")
## Build a regression tree based on the two predictors explored above
tree <- rpart(Price~KM + Age, data=data, method="anova",
              control=rpart.control(minsplit=30, cp=0.001))
x11()
plot(tree, uniform=TRUE, main="Regression tree for Toyota Corolla Car Price using (Age, KM)")
text(tree, use.n=TRUE, all=TRUE, cex=.8)

## How the tree first partitions the covariate space
dev.set(2)
abline(h=tree$splits[1,4], col="blue", lty=2)
