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

Q = [0.15, 0.45, 0.05, 0.35];
E = [1, 2, 3, 4];
counter = 1;
while(u > Q(counter))
counter = counter + 1;
end
E(counter)