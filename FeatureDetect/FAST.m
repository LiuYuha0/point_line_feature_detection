function [NonMaxFastValues,fastScale] = FAST(InputImage,corners,fscore)
% function for doing the Orientated Fast

% image size
[y,~]=size(InputImage);

% get vectorial indices for corners
pixel = zeros(size(corners,1),1);
for n = 1:size(corners,1)
    pixel(n) = (corners(n,1)-1)*y + corners(n,2); 
end

% get indicies for surrounding pixels
KernelSize = 5;
kernel = KernelSize*2+1; 
KernelVector = zeros(kernel^2,1);
%redistribute kernel
for i = 1:kernel
    for j = 1:kernel
        KernelVector((i-1)*kernel + j,1) = j-6 + (i-6)*y;
    end
end

% create fast score map
ScoreMap = zeros(size(InputImage));
ScoreMap(pixel) = fscore;

% initiate non maximum suppression 
CronerMax = zeros(size(corners,1),1);

for i = 1:size(corners,1)
    surround = pixel(i) + KernelVector;
    CronerMax(i) = (sum(fscore(i) >= ScoreMap(surround)) == kernel^2);    
end

NonMaxFastValues = corners(logical(CronerMax),:);
fastScale = fscore(logical(CronerMax));
end