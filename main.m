clear all 

[xtrn, ytrn] = loadDataSet();

%%
clear model prediction error
   
model = train(xtrn,ytrn);
prediction = evalue(xtrn, model);
error = costFunction(prediction,ytrn)


%%
clear examplesIndex examples class prediction error

examplesIndex = [113, 5 10];
examples = xtrn(examplesIndex,:);
class = ytrn(examplesIndex);
prediction = evalue(examples,model);

error = costFunction(prediction,class)





