function output = RGB2yCbCr_(filename)
    rgbImage = imread(filename); 
    A = [65.481 -37.797 112; ...      
         128.553 -74.203 -93.786; ...
         24.966 112 -18.214];

    ycbcrImage = reshape(double(rgbImage)./255,[],3)*A;

    ycbcrImage(:,1) = ycbcrImage(:,1)+16;
    ycbcrImage(:,2) = ycbcrImage(:,2)+128;
    ycbcrImage(:,3) = ycbcrImage(:,3)+128;

    %# Convert back to type uint8 and reshape to its original size:
    output = reshape(uint8(ycbcrImage),size(rgbImage));
end