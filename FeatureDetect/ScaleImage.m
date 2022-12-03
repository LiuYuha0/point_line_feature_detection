function [output_img] = ScaleImage(img_64, sigma_scale, scale)
% Gaussian smoothing and resize
if scale ~= 1
    % Gaussian blur 
    if scale < 1
        sigma = sigma_scale / scale;
    else
        sigma = scale;
    end
    sprec = 3;
    h = (ceil(sigma * sqrt(2 * sprec * log(10.0))));
    n = 1 + 2 * h;
    G = fspecial('gaussian', [n n], sigma);
    gaussian_img = imfilter(img_64, G, 'same'); 
%     gaussian_img = imgaussfilt(img_64,8);
%     figure, imshow(gaussian_img);

    output_img = imresize(gaussian_img, scale, 'bilinear', 'AntiAliasing', false);
%     figure, imshow(output_img),title('scaled_image');
%     
end