
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
i=1;
aa=0;
cc=0.01;
mm=zeros(1,100);
mili=zeros(1,100);

while i<100
    j=1;
    for j=1:500
        if (u(j)>aa) && (u(j)<cc)
            mm(i)=mm(i)+1;
        end;
    end;
    mili(i)=(aa+cc)/2;
    i=i+1;
    aa=cc;
    cc=0.01+aa;
end;
mm=mm/500;
bar(mili,mm);





    