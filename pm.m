% Initiate variables
epsilon = -0.09
A = 3*10^9/(17.49^-0.09)

% Define supply curve
S = @(q) q.*6.3775./(3.*10.^9)

% Define demand curve
D = @(q) exp((log(q) - log(A))/epsilon)