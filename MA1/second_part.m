fs = 8000;
n1 = 2;
t8 = 1/fs: 1/fs:n1/8;
t2 = 1/fs: 1/fs:n1/2;
sd = zeros(1,round(length(t8)/10));
rest = zeros(1,length(t8));

signal1 = 1/2 * exp(1j * 2 * pi * 220 * 2^(10/12) * t8) + 1/2 * exp(-1j * 2 * pi * 220 * 2^(10/12) * t8);
signal2 = 1/2 * exp(1j * 2 * pi * 220 * 2^(6/12) * t2) + 1/2 * exp(-1j * 2 * pi * 220 * 2^(6/12) * t2);
signal3 = 1/2 * exp(1j * 2 * pi * 220 * 2^(8/12) * t8) + 1/2 * exp(-1j * 2 * pi * 220 * 2^(8/12) * t8);
signal4 = 1/2 * exp(1j * 2 * pi * 220 * 2^(5/12) * t2) + 1/2 * exp(-1j * 2 * pi * 220 * 2^(5/12) * t2);

array = [signal1, sd, signal1, sd, signal1, sd, signal2, sd, rest, sd, signal3, sd, signal3, sd, signal3, sd, signal4];

sound(array)