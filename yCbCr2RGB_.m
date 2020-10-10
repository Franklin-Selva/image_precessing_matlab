function output = yCbCr2RGB_(ycbcrImage)
    A = [65.481 -37.797 112; ...      
         128.553 -74.203 -93.786; ...
         24.966 112 -18.214];

    ycbcrImage(:,1) = ycbcrImage(:,1) - 16;
    ycbcrImage(:,2) = ycbcrImage(:,2) - 128;
    ycbcrImage(:,3) = ycbcrImage(:,3) - 128;
    
    %# First convert the RGB image to double precision, scale its values to the
    %#   range 0 to 1, reshape it to an N-by-3 matrix, and multiply by A:
    output = reshape(int(ycbcrImage).*255,[],3)/A;

    %# Convert back to type uint8 and reshape to its original size:
%     output = reshape(uint8(ycbcrImage),size(rgbImage));
end