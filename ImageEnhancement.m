% Name: Dominique McClaney


close all;
clear;
clc;

%% Part 1: Log Transformation and Power Law Transformation

img1 = imread('fourierspectrum.pgm');
img1_double = double(img1);

% Log transformation
c = 255 / log(1 + max(img1_double(:)));
log_img = c * log(1 + img1_double);
log_img = uint8(log_img);

% Power law transformation
gamma = 0.4;
power_img = 255 * ((img1_double / 255) .^ gamma);
power_img = uint8(power_img);

imwrite(img1, 'original_fourierspectrum.png');
imwrite(log_img, 'log_transformation.png');
imwrite(power_img, 'power_law_gamma_04.png');

figure;
imshow(img1);
title('Original Fourier Spectrum');

figure;
imshow(log_img);
title('Log Transformation');

figure;
imshow(power_img);
title('Power Law Transformation, Gamma = 0.4');

%% Part 2: Histogram Equalization

img2 = imread('banker.jpeg');

if size(img2,3) == 3
    img2 = rgb2gray(img2);
end

img2 = uint8(img2);

equalized_img = histeq(img2);

imwrite(img2, 'original_banker.png');
imwrite(equalized_img, 'histogram_equalized_banker.png');

% Mean and standard deviation
mean_original = mean(img2(:));
std_original = std(double(img2(:)));

mean_equalized = mean(equalized_img(:));
std_equalized = std(double(equalized_img(:)));

disp(['Original Mean: ', num2str(mean_original)]);
disp(['Original Standard Deviation: ', num2str(std_original)]);
disp(['Equalized Mean: ', num2str(mean_equalized)]);
disp(['Equalized Standard Deviation: ', num2str(std_equalized)]);

% Histograms
figure;
imhist(img2);
title('Histogram of Original Banker Image');
saveas(gcf, 'histogram_original_banker.png');

figure;
imhist(equalized_img);
title('Histogram of Equalized Banker Image');
saveas(gcf, 'histogram_equalized_banker.png');

figure;
imshow(img2);
title('Original Banker Image');

figure;
imshow(equalized_img);
title('Histogram Equalized Banker Image');