a=1103515245;
b=12345;
m=2^32;
x0=4294967291;
n=input('donner la valeur de n ');
i=0;
l=0
x=x0;
for i=1:n
    x=mod(a*x+b,m);
    s(i,1)=x/m;
    x=mod(a*x+b,m);
    s(i,2)=x/m;
    l=l-exp(s(i,1)*log(s(i,2)))*log(s(i,2));
end;
l/n
