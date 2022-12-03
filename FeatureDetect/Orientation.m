function angle = Orientation(InputImage,coordinates)
% 
% compute angles corresponding to the selected points
% 

% transpose to compute angle
radious = 3; % FAST corner detector's default radious
InputImage = double(InputImage);  % converts column major to row major for efficency.
m = strel('octagon',radious); mask = m.Neighborhood; % FAST search mask
Ip = padarray(InputImage,[radious radious],0,'both'); % padding

r = size(mask,2);
c = size(mask,1);

angle = zeros(size(coordinates,1),1);

for i = 1:size(coordinates,1)
    
    vert = 0;
    horz = 0;
    
    Rinitial = coordinates(i,2); %initializes corners
    Cinitial = coordinates(i,1);
    
    for j= 1:r
        for k = 1:c
            if mask(k,j) 
               pixel = Ip(Cinitial + k-1, Rinitial + j-1);
               vert = vert + pixel * (-radious + k - 1);
               horz = horz + pixel * (-radious + j - 1);
            end
        end
    end
    angle(i) = atan2(vert,horz);
end
end