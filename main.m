clear all 

[xtrn, ytrn] = loadDataSet();


%% Mean error using KV

number_segments = 23;
 
indexes_partitions = get_indexs_kv_partitions(xtrn,number_segments);


for j=1:19
    
    [x_train,y_train, x_test,y_test] =  get_kv_partition(xtrn,ytrn,indexes_partitions,j);
    model = train(x_train,y_train);
    prediction = evalue(x_test, model);
    wcp(j) = costFunction(prediction,y_test);
end

meanError = mean(wcp)

%% Error using same set to train and evalue

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





