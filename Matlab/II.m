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
u=u/m;

lambda = 1;
X = (-1/lambda)*sum(log(u));