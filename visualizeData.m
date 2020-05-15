function visualizeData(xtrn,ytrn)
%VISUALIZEDATA Summary of this function goes here
%   Detailed explanation goes here

for i=1:length(ytrn)
imagesc(reshape(xtrn(:,i),28,28)');colormap gray;
title(num2str(ytrn(i)));
pause
end

