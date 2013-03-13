img = imread('greens.jpg');
img_ppm = im2bw(img,0.4)
imwrite(img_ppm,'greensStd.jpg');

