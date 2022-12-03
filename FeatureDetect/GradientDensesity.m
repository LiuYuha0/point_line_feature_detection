function [dense_img] = GradientDensesity(scaled_image, threshold)

[img_rows, img_cols] = size(scaled_image);
sub_img_rows = 24;
sub_img_cols = 43;
sub_img_num = (img_rows/sub_img_rows) * (img_cols/sub_img_cols);
rebuild = zeros(img_rows, img_cols);
dense_img = zeros(img_rows, img_cols);
block = zeros(sub_img_rows, sub_img_cols, sub_img_num);
sub_img_idx = 1;
img_gradient_x = zeros(sub_img_rows, sub_img_cols, sub_img_num);
img_gradient_y = zeros(sub_img_rows, sub_img_cols, sub_img_num);

for i = 1:img_rows/sub_img_rows
    for j = 1:img_cols/sub_img_cols
        % cut sub_img
        block(:,:,sub_img_idx) = scaled_image((i-1)*sub_img_rows+1:i*sub_img_rows, ...
                            (j-1)*sub_img_cols+1:j*sub_img_cols);

        [img_gradient_x(:,:,sub_img_idx), img_gradient_y(:,:,sub_img_idx)] = ...
            gradient(block(:,:,sub_img_idx), 2, 2);
        intense_x = sum(sum(abs(img_gradient_x(:,:,sub_img_idx))>1));
        intense_y = sum(sum(abs(img_gradient_y(:,:,sub_img_idx))>1));
        dense_ratio_x = intense_x / (sub_img_rows*sub_img_cols);
        dense_ratio_y = intense_y / (sub_img_rows*sub_img_cols);
        if(dense_ratio_x > threshold) || (dense_ratio_y > threshold)
            % save dense area
            dense_img((i-1)*sub_img_rows+1:i*sub_img_rows, (j-1)*sub_img_cols+1:j*sub_img_cols) = 1;
            block(:,:,sub_img_idx) = imadjust(uint8(block(:,:,sub_img_idx)),[0.2,0.8],[0.5,0.9]);
        end
        % rebuild sub_img
        rebuild((i-1)*sub_img_rows+1:i*sub_img_rows, (j-1)*sub_img_cols+1:j*sub_img_cols) = block(:,:,sub_img_idx);
        sub_img_idx = sub_img_idx+1;
    end
end

figure(2),imshow(uint8(rebuild)),title('DenseArea');
end