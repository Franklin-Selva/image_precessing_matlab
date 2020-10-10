clc; close all; clear;

% A = double_exposure("./data/everest.jpg", "./data/everest1.jpg", 0.5);
% A = bit_operation("./data/lena.png")
A = RGB2yCbCr_("./data/everest.jpg");
figure, imshow(A)
B = yCbCr2RGB_("./data/everest.jpg");
figure, imshow(B)

