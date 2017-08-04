% Define parameters
a=65539;
c=0;
x0=1;
m=2^31;

% Calculate sequence using recursion relation
xn=zeros(20000,1);
for i=1:20000
xn(i)=mod(a*x0+c,m);
x0=xn(i);
end
% Divide by m to give real numbers between 0 and 1
un=xn/m;

Prob=[0.15, 0.45, 0.05, 0.35];
val = [1.2,3,4];
counter =1;
while(un > Prob(counter))
   counter=counter+ 1;
   
end
val(counter)

  