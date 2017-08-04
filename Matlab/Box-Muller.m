r = rand(5000, 2);
n = sqrt(-2*log(r(:, 1)))*[1, 1].*[cos(2*pi*r(:, 2)), sin(2*pi*r(:, 2))];
hist(n)