function [lines_list, used] = FLSD(img_64)
% default parameter
ANG_TH = 15;  
QUANT = 2.0;                % Bound to the quantization error on the gradient norm;
SCALE = 0.8;
SIGMA_SCALE = 0.6;
DENSITY_TH = 0.7;
LOG_EPS = 0.0; 
LSD_REFINE_NONE = 0;
LSD_REFINE_STD = 1;
LSD_REFINE_ADV = 2;

doRefine = 2;

% Angle tolerance
prec = deg2rad(ANG_TH);
p = ANG_TH / 180;
rho = QUANT / sin(prec);  % Gradient magnitude threshold

% Gaussian smoothing and resize
scaled_image = ScaleImage(img_64, SIGMA_SCALE, SCALE);

% Gradient densesity
dense_img = GradientDensesity(scaled_image, 0.6);

grayImage = scaled_image;
tmp_img = double(grayImage);

originalMinValue = double(min(min(grayImage)));
originalMaxValue = double(max(max(grayImage)));
originalRange = originalMaxValue - originalMinValue;

% Get a double image in the range 0 to +255
desiredMin = 0;
desiredMax = 255;
desiredRange = desiredMax - desiredMin;
scaled_image = desiredRange * (double(grayImage) - originalMinValue) / originalRange + desiredMin;
diff_img = scaled_image - tmp_img;

% % Get a double image in the range 0 to +1
% desiredMin = 0;
% desiredMax = 1;
% desiredRange = desiredMax - desiredMin;
% scaled_image = desiredRange * (double(grayImage) - originalMinValue) / originalRange + desiredMin;


% get the gradient and orientation of each pixel and sort them
[angles, modgrad, ordered_points] = LLAngle(scaled_image, 10, 1024, dense_img);

[height, width, dim] = size(scaled_image);
LOG_NT = 5 * (log10(width) + log10(height)) / 2 + log10(11.0);
min_reg_size = int16(-LOG_NT/log10(p));
used = zeros(size(scaled_image));
rec_list = zeros(0,12);
%search for line segments
[ordered_point_size, ordered_point_] = size(ordered_points);

for i = 1 : ordered_point_size
    if ordered_points(i,1) == 0 && ordered_points(i,2) == 0
        break;
    end

    % point = ordered_points(i, :); %[y, x, gradient]
    if used(ordered_points(i,1), ordered_points(i,2)) == 0 && angles(ordered_points(i,1), ordered_points(i,2)) ~= -1024
        [reg, reg_angle, updated_used] = RegionGrow(ordered_points(i,:), used, angles, modgrad, prec);
        % update used
        used = updated_used;
        
        % ignore small regions
        [reg_height, reg_width] = size(reg);
        if reg_height < 50 %min_reg_size
            continue;
        end
        
        % construct rectangular approximation for the region
        % region2rect(reg, reg_angle, prec, p rec);
        rec = Region2Rect(reg, reg_angle, prec, p);
        
        % Construct rectangular approximation for the region
        log_nfa = -1;
        if (doRefine > LSD_REFINE_NONE)
            [y, updated_used, rec_] = Refine(reg, reg_angle, prec, p, rec, DENSITY_TH, used, angles, modgrad);
            rec = rec_;
            used = updated_used;
            if ~y
                continue;
            end
            if (doRefine >= LSD_REFINE_ADV)
                [log_nfa, rec] = RectImprove(rec, angles);
                if (log_nfa <= LOG_EPS)
                    continue;
                end
            end
        end
            
        % add the offset
        rec(1) = rec(1) + 0.5;
        rec(2) = rec(2) + 0.5;
        rec(3) = rec(3) + 0.5;
        rec(4) = rec(4) + 0.5;
        
        % scale the results values if a sub-sampling was performed
        if SCALE ~= 1
            rec(1) = rec(1) / SCALE;
            rec(2) = rec(2) / SCALE;
            rec(3) = rec(3) / SCALE;
            rec(4) = rec(4) / SCALE;
            rec(5) = rec(5) / SCALE;
        end
        rec_list = [rec_list; rec];
    end
end
lines_list = rec_list;
