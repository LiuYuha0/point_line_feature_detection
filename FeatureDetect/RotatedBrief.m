function features = RotatedBrief(InputImage,corners,patterns,angle)

% initialise features
features = zeros(size(corners,1),256);

for a = 1:size(corners,1)
    Rotation1 = round([cos(angle(a)), -sin(angle(a));sin(angle(a)), cos(angle(a))] * patterns(:,1:2)')'; 
    Rotation2 = round([cos(angle(a)), -sin(angle(a));sin(angle(a)), cos(angle(a))] * patterns(:,3:4)')';
    for b = 1:256
        p1 = InputImage(corners(a,2) + Rotation1(b,2),corners(a,1) + Rotation1(b,1));
        p2 = InputImage(corners(a,2) + Rotation2(b,2),corners(a,1) + Rotation2(b,1));
        features(a,b) = double(p1 < p2);
    end
end
end