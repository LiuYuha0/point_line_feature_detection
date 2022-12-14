function [reg, reg_angle, updated_used] = RegionGrow(ordered_point, used, angles, modgrad, prec)
% 
% Grow a region starting from point s with a defined precision,
% returning the containing points size and the angle of the gradients.
% 
%  * @param s         Starting point for the region.
%  * @param reg       Return: Vector of points, that are part of the region
%  * @param reg_angle Return: The mean angle of the region.
%  * @param prec      The precision by which each region angle should be aligned to the mean.

% reg [y, x, used, angle, modgrad]
% ordered_point [y, x, graident]
% used a matrix with the size equal to scaled_img, the default value is 0

[height, width, dim] = size(angles);
%seed is the start point of the region
reg = zeros(0,5);
seed(1,1) = ordered_point(1,1);
seed(1,2) = ordered_point(1,2);
seed(1,3) = used(ordered_point(1,1), ordered_point(1,2));
seed(1,4) = angles(ordered_point(1,1), ordered_point(1,2));
reg_angle = seed(1,4);
seed(1,5) = modgrad(ordered_point(1,1), ordered_point(1,2));
reg = [reg; seed];
reg_size = size(reg);

sumdx = cos(reg_angle);
sumdy = sin(reg_angle);
i =1;
%try neighboring regions (maximum 9 pixels)
while i <= reg_size(1,1)
    rpoint = reg(i,:);
    xx_min = max(rpoint(2) -1, 1); xx_max = min(rpoint(2) + 1, width);
    yy_min = max(rpoint(1) -1, 1); yy_max = min(rpoint(1) + 1, height);
    for yy = yy_min : yy_max
        for xx = xx_min : xx_max
            is_used = used(yy,xx);
            if ~is_used && AlignedCheck(xx, yy, reg_angle, prec, angles)
                angle_ = angles(yy, xx);
                %add point to region
                used(yy,xx) = 1;
                region_point = zeros(0,5);
                region_point(1,1) = yy;
                region_point(1,2) = xx;
                region_point(1,3) = used(yy, xx);
                region_point(1,4) = angles(yy, xx);
                region_point(1,5) = modgrad(yy, xx);
                reg = [reg; region_point];
                
                %update region's angle
                sumdx = sumdx + cos(angle_);
                sumdy = sumdy + sin(angle_);
                
                %update reg_angle (RADS)
                reg_angle = atan2(sumdy, sumdx);
            end
        end
    end
    i = i +1;
    reg_size = size(reg);
end
updated_used = used;
