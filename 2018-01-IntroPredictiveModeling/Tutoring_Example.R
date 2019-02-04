data("tutoring")

tutoring$treat2 <- as.factor(tutoring$treat != 'Control')

inTrain <- createDataPartition(
	y = tutoring$treat2,
	## the outcome data are needed
	p = .75,
	## The percentage of data in the
	## training set
	list = FALSE
)

tutoring.train <- tutoring[inTrain,]
tutoring.valid <- tutoring[-inTrain,]

rfFit <- train(
	treat2 ~ Gender + Ethnicity + Military + ESL + EdMother + EdFather + 
		Age + Employment + Income + Transfer + GPA,
	data = tutoring.train,
	method = "parRF"
)
rfFit

rf.valid.pred <- predict(rfFit, newdata = tutoring.valid)
confusionMatrix(rf.valid.pred, tutoring.valid$treat2)
