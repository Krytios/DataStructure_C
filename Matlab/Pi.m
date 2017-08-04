clc;
n = input("Nombre de points: ");
x = rand(n, 1);
y = rand(n, 1);
figure("color", "white");
hold all

axis square;
x1 = x-0.5;
y1 = y-0.5;
r = x1.^2+y1.^2;
m = 0;
for i=1:n
   if r(i)<=0.25;
      m = m+1;
      plot(x(i), y(i), 'b.');
   else 
      plot(x(i), y(i), 'r.');
   end
end
m/(0.25*n);