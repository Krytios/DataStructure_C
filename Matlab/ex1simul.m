
x=input('Donner la valeur de x :');
u=zeros(1,60);
u(1)=x;
for i=1:60
    u(i+1)=mod(25*u(i)+16,256);
end;
u/256;
plot(u(1:59),u(2:60),'.');
