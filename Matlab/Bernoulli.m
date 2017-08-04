a=75;
b=0;
m=2^31+1;
x=input('Donner la valeur de x :');
i=1;
while i<=20000
    x=mod(a*x+b,m);
    u(i)=x;
    i=i+1;
end;
u=u/m;
p = 3;
k = 0;
N = 0;
nValues = numel(k);
pmf = zeros(1,nValues);
for i = 1:nValues
   pmf(i) = nchoosek(N,k(i))*p^k(i)*(1-p)^(N-k(i));
end
pmf

subplot(1,2,1)

plot(pmf,'k');

box off

axis square

xlabel('Sample index')

ylabel('Random number value')

subplot(1,2,2)

hist(pmf)

box off

axis square

xlabel('Bins')

ylabel('Bin count')