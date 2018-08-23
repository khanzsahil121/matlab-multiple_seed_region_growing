function J1 = callRegionGrowing(filename)
I= im2double(imread(filename));
I=rgb2gray(I);
I=imresize(I,[256,256]);
figure, imshow(I,[]); [y,x]=getpts; y=round(y); x=round(x); 
% x=198; y=359;
J1=zeros(size(I,1),size(I,2));
for i=1:length(y)
    
 J = regiongrowing(I,x(i),y(i)); 
 J1=J1+J;
 
end
figure, imshow(J1(:,:,1));
title('RegionGrowing Segmentation');
end


