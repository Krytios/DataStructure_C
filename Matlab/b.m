clear all
map(1, :)=[rand rand rand];
colormap(map)
n=20;
theta=0.2;
nb = 2000;
R=binornd(n, theta, nb, 1);
hist(R)
x = 0:1:max(R);
p1 = nb*binopdf(x, n, theta);
hold on
plot(x, p1, '*k', theta);
box off
hold off