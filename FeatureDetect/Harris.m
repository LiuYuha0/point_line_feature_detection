% compute harris corner score
function H = Harris(InputImage)
InputImage = double(InputImage);
% parameters 
sig=2; r = 6;
% gradient kernel
dx = [-1 0 1; -1 0 1; -1 0 1]; % The Mask 
dy = dx';

% main
Ix = conv2(InputImage, dx, 'same');   
Iy = conv2(InputImage, dy, 'same');
g = fspecial('gaussian',max(1,fix(6*sig)), sig); % Gaussian Filter

Ix2 = conv2(Ix.^2, g, 'same');  
Iy2 = conv2(Iy.^2, g, 'same');
Ixy = conv2(Ix.*Iy, g,'same');

k = 0.04;
Hp = (Ix2.*Iy2 - Ixy.^2) - k*(Ix2 + Iy2).^2;

H = (10000/max(abs(Hp(:))))*Hp;

% set edges zeros 
H(1:r,:) = 0;
H(:,1:r) = 0;
H(end-r+1:end,:) = 0;
H(:,end-r+1:end) = 0;
end