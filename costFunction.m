function errorRate = costFunction(prediction,y)
%COSTFUNCTION gets error

correctClasses = sum(prediction==y);
errorRate = (((length(y)-correctClasses)/length(y)))*100;

end

