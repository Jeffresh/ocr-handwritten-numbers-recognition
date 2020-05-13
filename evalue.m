function result = evalue(examples,model)
%EVALUATEMODEL get the classes predicted over trained model

classesNumber = 10;

means = model{1};
covs = model{2};

for i=1 : classesNumber
    distance(:,i) = sum((examples-means(i,:)) .^2,2);
%        distance(:,i) = examples - means(i,:) * inv(covs{i}) * (examples - means(i,:))';
       distance(:,i) = d_mahal(examples', means(i,:)', covs{i});
end
[~,predicted] = min(distance,[],2);
result = predicted-1;

end

