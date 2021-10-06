% Initiate variables
epsilon = -0.09
A = 3*10^9/(17.49^-0.09)

% Define supply curve
S = @(q) q.*6.3775./(3.*10.^9)

% Define demand curve
D = @(q) exp((log(q) - log(A))/epsilon)

% Let's generate a linspace
q = linspace(0.001, 4*10^9, 4000000);

% Vectors of values
Dvalues = D(q);
Svalues = S(q);

% Set axis values
axis([0 4*10^9 0 25]);

% Labels please
title('Price/quantity diagram');
xlabel('Quantity (10^9 litres)');
ylabel('Price (kr)');

% Let's plot this
plot(q, Svalues);
hold on
plot(q, Dvalues);
