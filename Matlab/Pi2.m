
clear; clc;
n= 10000
a=75;
b=0;
m=2^31+1;
x=2;
i=1;
while i<=20000
    x=mod(a*x+b,m);
    u(i)=x;
    i=i+1;
end;
x=u/m;
a=75;
b=0;
m=2^31+1;
x=2;
i=1;
while i<=20000
    x=mod(a*x+b,m);
    u(i)=x;
    i=i+1;
end;
y=u/m;

figure(1);
plot(x, y, '+r')
c =0; s=0;
for i=1:n
    s=s+1;
    if x(i)^2+y(i)^2 <=1
        c = c+1;
        
        figure(2);
        plot(x(i), y(i), 'b+');
        hold on;
    else
        figure(2);
        plot(x(i), y(i), 'r+');
    end
end

p=c/s

pi=p*4
fprintf(pi)