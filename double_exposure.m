function output = double_exposure(file1, file2, factor)
    Img1 = imread(file1);
    Img2 = imread(file2);
    [r1, c1, ~] = size(Img1);
    [r2, c2, ~] = size(Img2);
    
    if r1 == r2 && c1 == c2
        output = Img1 + factor*Img2;
        
    else
        tmp = imresize(Img2,[r1 c1]);
        output = Img1 + factor * tmp; 
    end
end