function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

y_vals = X*theta;

y_diff = y_vals - y;

costs = y_diff .^2;

% Initialize some useful values
m = size(X,1); % number of training examples
%disp(m)

% You need to return the following variables correctly 
J = 1 /(2*m) * sum(costs);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.





% =========================================================================

end
