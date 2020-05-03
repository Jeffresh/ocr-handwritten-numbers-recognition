function model = trainModel(x,y)
%TRAINMODEL gets the model trained using minimun distance

if min(y) == 0; classesNumber = max(y) +1 ; else classNumber = max(y); end
means = meanFeatures(x, y);
model = means;

end

