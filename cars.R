library(readr)
getwd()
cars <- read.csv("cars.csv")
attributes(cars)
summary(cars)
str(cars)
names(cars)
cars$speed.of.car
hist(cars$distance.of.car)
plot(cars$speed.of.car, cars$distance.of.car)
qqnorm(cars$speed.of.car)
names(cars) <- c("car", "speed", "distance")
summary(cars)
set.seed(123)
trainSize <- round(nrow(cars) * 0.7)
testSize <- nrow(cars) - trainSize
trainSize
testSize
training_indices<-sample(seq_len(nrow(cars)),size = trainSize)
trainSet <- cars[training_indices,]
testSet <- cars[-training_indices,]
lin_reg <- lm(distance~ speed, trainSet)
summary(lin_reg)
predictDistance <- predict(lin_reg, testSet)
predictDistance
