data(iris)
head(iris)
install.packages("caret")
library(caret)

set.seed(123)
trainIndex <- createDataPartition(iris$Species, p = 0.7, list = FALSE)
trainData <- iris[trainIndex, ]
testData  <- iris[-trainIndex, ]



install.packages("rpart")

# Load the package
library(rpart)

model_dt <- rpart(Species ~ ., data = trainData, method = "class")
print(model_dt)


pred_dt <- predict(model_dt, newdata = testData, type = "class")
head(pred_dt)
install.packages("caret", dependencies = TRUE)


library(caret)
pred_dt <- predict(model_dt, testData, type = "class")


conf_mat <- confusionMatrix(pred_dt, testData$Species)
conf_mat



accuracy <- conf_mat$overall['Accuracy']
accuracy






iris_bin <- iris
iris_bin$IsSetosa <- ifelse(iris_bin$Species == "setosa", "Yes", "No")
iris_bin$IsSetosa <- as.factor(iris_bin$IsSetosa)

set.seed(123)
trainIndex2 <- createDataPartition(iris_bin$IsSetosa, p = 0.7, list = FALSE)
trainData2 <- iris_bin[trainIndex2, ]
testData2  <- iris_bin[-trainIndex2, ]

model_log <- glm(IsSetosa ~ Sepal.Length + Sepal.Width, 
                 data = trainData2, 
                 family = binomial)



summary(model_log)





prob <- predict(model_log, newdata = testData2, type = "response")
pred_log <- ifelse(prob > 0.5, "Yes", "No")
pred_log <- as.factor(pred_log)

confusionMatrix(pred_log, testData2$IsSetosa)