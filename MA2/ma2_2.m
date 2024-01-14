N = imread('Lion.bmp');

G = mat2gray(N, [0,255]);

[m,n] = size(G);

y = G;
for p = 1:m
    for q = 2:n
        y(p, q) = G(p, q) - G(p, q - 1); 
    end
end

figure;
imshow(y);

w = linspace(-pi, pi, 2000); 
h = 1 - exp(-1i * w); 
figure;
plot(w, abs(h)); 
title('Magnitude of Frequency Response');
xlabel('Angular Frequency');
ylabel('Magnitude');
