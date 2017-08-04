%  Monte Carlo computation of pi.

n = input(' Enter n: ');
count = 0;

%  Generate random points in the square [-1,1]X[-1,1].
%  The fraction of these that lie in the unit disk
%  x^2+y^2 <= 1 will be approximately pi/4.

%  Think of this as taking the average of N independent
%  identically distributed random variables X_i, where
%  X_i = 1 if point i lies in the disk, 0 otherwise.

Eofxsq = 0;   % Compute expected value of X_i^2 to use in error estimate.

for i=1:n,
  x = 2*rand-1;  y = 2*rand-1;
  if x^2 + y^2 <= 1,  count = count + 1;  Eofxsq = Eofxsq + 1^2;  end;
end;

pi_approx = 4*(count/n),
err = pi - pi_approx,

Eofxsq = Eofxsq/n;
varx = Eofxsq - (count/n)^2; % Variance in individual approximations to pi/4.
sigx = sqrt(varx);           % Std dev  in individual approximations to pi/4.
sigma = 4*sigx/sqrt(n),      % Std dev in total approximation to pi.

fprintf('Error should be less than %f, 68.3 percent of the time\n',sigma)
fprintf('Error should be less than %f, 95   percent of the time\n',2*sigma)