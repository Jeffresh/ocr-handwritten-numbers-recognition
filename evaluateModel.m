function result = evaluateModel(examples,model)
%EVALUATEMODEL get the classes predicted over trained model

classesNumber = 10;

for i=1 : classesNumber
    distance(:,i) = sum((examples-model(i,:)) .^2,2);
end
[~,predicted] = min(distance,[],2);
result = predicted-1;

end

