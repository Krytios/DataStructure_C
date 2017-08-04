a=75;
b=0;
m=2^31-1;
x=input('Donner la valeur de x :');
u=zeros(1,500);
u(1)=x;
for i=1:500
    u(i+1)=mod(a*u(i)+b,m);
end;
u=u/m;
plot(u);