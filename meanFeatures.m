function means = meanFeatures(x,y)
%MEANFEATURES obtain a matrix with the mean of features per classes
% 

if min(y) == 0; classesNumber = max(y) +1 ; else classNumber = max(y); end

means = zeros(classesNumber,size(x,2))
    for i=1 :classesNumber
        index= y==i-1;
        means(i,:) = mean(x(index,:));
    end

end

