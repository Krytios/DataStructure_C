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
% Plot 3-tuples of the u_i in 3D space
plot3(un(1:end-2),un(2:end-1),un(3:end), 'b.');
xlabel('u_i'); 
ylabel('u_{i+1}'); 
zlabel('u_{i+2}'); 
grid('on');