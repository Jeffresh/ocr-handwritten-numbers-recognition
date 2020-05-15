function C = extractFeatures(xtrn)
    for i=1:size(xtrn,2)
        digit = reshape(xtrn(:,i),28,28)';
        M = dct2(digit);
        M = M(1:10,1:10);
        C(:,i) = M(:);
    end
end