function [xtrn,ytrn] = loadDataSet()
%LOADDATASET return data set splited into to variables, xtrain and ytrain
dataset = load('data_mnist_students');

xtrn = extractFeatures(dataset.xtrn)';
ytrn = dataset.ytrn';

end

