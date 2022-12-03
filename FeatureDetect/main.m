% camera parmeters
intrinsics = [458.654 0 0; 0 457.296 0; 367.215 248.375 1]; % fu, fv; cu, cv
distortion_coefficients = [-0.28340811, 0.07395907, 0.00019359, 1.76187114e-05];
radialDistortion = distortion_coefficients(1:2);
cameraParams = cameraParameters('IntrinsicMatrix', intrinsics, 'RadialDistortion', radialDistortion); 

% read images
file_path = '../example/';
image_name = '1403715900934057984.png';
img_raw = imread(strcat(file_path, image_name));
img_undistort = undistortImage(img_raw,cameraParams);

% histogram equalize
img_equalize = histeq(img_undistort, 256);

% LSD
% tic;
st = cputime;
img = Detect(img_equalize);
lines_list = FLSD(img);
% toc;
et = cputime - st

% find the ORB points of image
[brief1, corner1] = OrbSearcher(img_equalize);

% plot point and line feature
figure(1)
imshow(img_equalize),title('result'),hold on;
for i = 1: size(lines_list,1)
    plot([lines_list(i,2),lines_list(i,4)],[lines_list(i,1),lines_list(i,3)],'red');
end
plot(corner1(:,1),corner1(:,2),'go')
axis ij
hold off
