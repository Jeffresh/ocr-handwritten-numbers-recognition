clear all 
[xtrn, ytrn] = loadDataSet();

%%
clear model prediction error

model = trainModel(xtrn,ytrn);
prediction = evaluateModel(xtrn, model);
error = costFunction(prediction,ytrn)


%%
clear examplesIndex examples class prediction error

examplesIndex = [113];
examples = xtrn(examplesIndex,:);
class = ytrn(examplesIndex);
prediction = evaluateModel(examples,model);

error = costFunction(prediction,class)







