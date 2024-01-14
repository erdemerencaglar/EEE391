T = 2;
t = 0:1/1000:4;
f = 1 / T;

k = 50;
x =  @(t) 1 + sawtooth(2*pi*f*t, 1/2);

x_t = zeros(size(t));

for i = -k:k 
    x_t = x_t + ((1/T) * integral(@(t) x(t) .* exp(-1j * 2 * pi * f * i * t), 0, T)) * exp(1j * 2 * pi * f * i * t);
end

figure;
hold on;
plot(t, real(x_t));
plot(t, x(t));
axis([0 4 0 2]); 
xlabel('x');
ylabel('f(x)');
hold off;
