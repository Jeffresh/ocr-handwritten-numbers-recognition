function model = train(x,y)
%TRAIN gets the model trained using minimun distance

if min(y) == 0; classesNumber = max(y) +1 ; else classNumber = max(y); end

means = zeros(classesNumber,size(x,2));

    for i=1 :classesNumber
        index= y==i-1;
        means(i,:) = mean(x(index,:));
        covs{i} = cov(x(index,:));
    end

model = {means, covs};
end

