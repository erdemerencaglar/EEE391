T = 2;
f = 1/T;
t = 0:1/1000:4;

k_value = 2000;
x = @(t) square(2*pi*f*(t-1));
x_t = zeros(size(t));

for i = -k_value:k_value 
    x_t = x_t + (1/T) * integral(@(t) x(t) .* exp(-1j * 2 * pi * f * i * t), 0, T) * exp(1j * 2 * pi * f * i * t);
end

figure;
hold on;
plot(t, real(x_t));
plot(t, x(t)); 
axis([0 4 -1.5 1.5]); 
hold off;