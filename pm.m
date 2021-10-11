% Clear
clear
clc

% Initiate variables
epsilon = -0.09;
pnotax = 5.98;
ptax = 15.77;
qavg = 3.085394.*10.^9;
A = qavg/(ptax^epsilon)

% Define supply curve
S = @(q) q.*pnotax./(qavg)

% Define demand curve
D = @(q) exp((log(q) - log(A))/epsilon)

% Let's generate a linspace
q = linspace(0.001, 4*10^9, 4000000);

% Vectors of values
Dvalues = D(q);
Svalues = S(q);

% Initiate figure
figure
hold on

% Labels please
title('Price/quantity diagram');
xlabel('Quantity (10^9 litres)');
ylabel('Price (kr)');

% Set axis values
axis([0 4*10^9 0 25])

% Let's plot this
plot(q, Svalues);
hold on
plot(q, Dvalues);
