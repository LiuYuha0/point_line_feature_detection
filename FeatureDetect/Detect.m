function double_gray_img= Detect(img)

% Convert image to double grayscale
if size(img,3) == 3
  img = rgb2gray(img);
end
img_64 = 255 .* im2double(img);
double_gray_img = img_64;
