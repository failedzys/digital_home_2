img = imread('greens.jpg');
img_ppm = im2bw(img,0.5)
imwrite(img_ppm,'greens.ppm');

