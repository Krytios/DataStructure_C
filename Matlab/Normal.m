
n = input('Enter the number of samples please:');

m = input('Enter the mean value please:');

s = input('Enter the standard deviation vlaue please:');

%generate all n samples. Scaled by 's' and biased by 'm'.

y=s*randn(1,n)+m*ones(1,n);

%plot the resulting data

box off

axis square

hold on

subplot(1,2,1)

plot(y);

xlabel('Sample index')

ylabel('Random number value')

%generate a histogram of the data to view the pdf}

subplot(1,2,2)

hist(y)

xlabel('Bin'),ylabel('Sample Count')