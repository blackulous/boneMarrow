mydata = read.csv("bone_marrow_imputed.csv")
#simple generalized linear model to check the given hypothesis  
lm_fit = lm(survival_time ~ CD34kgx10d6, data = mydata)
# suggests a potential positive relationship but nothing really statistically significant 
set.seed(123)
ind = sample(2, nrow(mydata), replace = T , prob = c(0.7,0.3))
train = mydata[ind ==1,]
test = mydata[ind ==2,]
# logistic regression to test the hypothesis that increased dosage of CD3dCD34kg extends overall survival time without adverse affects 
# I added relapse as that is an adverse effect 
model = glm(survival_status ~ Relapse + Rbodymass + CD34kgx10d6, 
            data = train, family = 'binomial')
# CD34KG doesn't have an affect on survival_status compared to Relapse and Body Mass of the patient
#train prediction
train_pred = predict(model, train , type = 'response')
# error on train 
train_log = ifelse(train_pred>0.5, 1,0)
train_conf_matrix = table(Predicted = train_log, Actual = train$survival_status)
print("Train misclassification error:")
(mean(train_log != train$survival_status))

#Test prediction
test_pred = predict(model, test, type = 'response')
# error on test 
test_log = ifelse(test_pred>0.5, 1,0)
conf_matrix = table(Predicted = test_log, Actual = test$survival_status)

print("Test misclassification error:")
print(mean(test_log!= test$survival_status ))
