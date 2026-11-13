%% =====================================================
% Digital Image Processing Project
% Project: Edge Detection using MATLAB
% ======================================================

clc;
clear;
close all;

%% Step 1 : Read Input Image
img = imread('FinalImage1.jpg');      

%% Step 2 : Display Original Image
figure;
imshow(img);
title('Original Image');

%% Step 3 : Convert RGB Image to Gray
if size(img,3)==3
    gray = rgb2gray(img);
else
    gray = img;
end

figure;
imshow(gray);
title('Gray Image');

%% Step 4 : Image Enhancement
enhanced = histeq(gray);

figure;
imshow(enhanced);
title('Enhanced Image');

%% Step 5 : Edge Detection

sobel = edge(enhanced,'Sobel');
prewitt = edge(enhanced,'Prewitt');
roberts = edge(enhanced,'Roberts');
canny = edge(enhanced,'Canny');

%% Step 6 : Display All Results

figure;

subplot(2,3,1)
imshow(img)
title('Original')

subplot(2,3,2)
imshow(gray)
title('Gray')

subplot(2,3,3)
imshow(sobel)
title('Sobel Edge')

subplot(2,3,4)
imshow(prewitt)
title('Prewitt Edge')

subplot(2,3,5)
imshow(roberts)
title('Roberts Edge')

subplot(2,3,6)
imshow(canny)
title('Canny Edge')

%% Step 7 : Save Output Images

imwrite(gray,'Gray_Image.jpg');
imwrite(enhanced,'Enhanced_Image.jpg');

imwrite(sobel,'Sobel_Output.jpg');
imwrite(prewitt,'Prewitt_Output.jpg');
imwrite(roberts,'Roberts_Output.jpg');
imwrite(canny,'Canny_Output.jpg');

%% Step 8 : Completion Message

disp('========================================');
disp('Edge Detection Completed Successfully');
disp('Gray Image Saved');
disp('Enhanced Image Saved');
disp('Sobel Output Saved');
disp('Prewitt Output Saved');
disp('Roberts Output Saved');
disp('Canny Output Saved');
disp('========================================');