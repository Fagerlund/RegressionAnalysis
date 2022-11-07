
library("hdi")
data("riboflavin")


fit.multi <- hdi(riboflavin[,-1], riboflavin[,1], B=100)




sample_size = round(nrow(riboflavin)*0.76)
index <- sample(seq_len(nrow(riboflavin)), size = sample_size)

train <- riboflavin[index, ]
test <- riboflavin[-index, ]


x_data = riboflavin$x
x_data = riboflavin$y

vector1 <- as.matrix(train$x)
m = matrix(vector1, nrow = 54)




cv_model <- cv.glmnet(x, train )


