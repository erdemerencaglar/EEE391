N = imread('Lion.bmp');

G = mat2gray(N, [0,255]);

G = rgb2gray(G); 

M_values = [21, 31, 51];
m_index = 3; 

b_val = 0.4; 

random_values = (rand(size(G)) - 0.5) * b_val;
G = G + random_values; 

b = ones(1,M_values(m_index))/M_values(m_index);
A = imfilter(G, b);

figure;
imshow(A)
