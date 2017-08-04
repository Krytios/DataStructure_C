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

Lambda = 2;
i = 0;
Y = -(1/Lambda)*log(u);
sum = Y ;
while(sum <= 1)
    Y = -(1/Lambda)*log(u);
    sum = sum + Y ;
    i = i + 1;
end
X = i;