%oPour avoir la période maximale soit (m-1), il faut choisir m nombre
%premier et prendre a racine primitive de m   mod(a^n, m) != 1

a=2;
m=11;
x=input('Donner la valeur de x :');
i=1;
while i<=20000
    x=mod(a*x,m);
    u(i)=x;
    i=i+1;
end;
u=u/m;

