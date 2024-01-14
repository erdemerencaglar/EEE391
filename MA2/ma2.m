N = imread('Lion.bmp');

G = mat2gray(N, [0,255]);

M_values = [21, 31, 51];
m_index = 3; 

b = ones(1,M_values(m_index))/M_values(m_index);

A = imfilter(G, b); 

[h,w] = freqz(b, 1, 'whole');
h = fftshift(h);
w = linspace(-pi, pi, length(w)); 

figure;
imshow(A)

figure;
plot(w, abs(h));
title('Magnitude of Frequency Response for M:51');
xlabel('Angular Frequency');
ylabel('Magnitude');


