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

K = 1;
p = 0.3;
r = 2;
success = 0;
while(success < r)
  if (u > p)
    K = K + 1;
    print = 0
  else %Echec
      success = success + 1;
      print = 1 
      %Succes 
  end
end
K + r-1  %nombre d'essai pour obtenir r succes