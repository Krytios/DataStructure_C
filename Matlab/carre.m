n=200000;
dis=0;
x=rand([1,n]);
y=rand([1,n]);
for i=1:n
    if x(i)^2+y(i)^2<=1
        dis=dis+1;
    end;
end;
pi=4*dis/n
        