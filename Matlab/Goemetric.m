a=75;
b=0;
m=2^31+1;
x=input('Donner la valeur de x :');
i=1;
while i<=500
    x=mod(a*x+b,m);
    u(i)=x;
    i=i+1;
end;
u=u/m;

K = 1;
p = 0.2;
while(u > p)
   K = K + 1;
end
K