function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
J = 0;
grad = zeros(size(theta));

%options =  optimset('GradObj', 'on', 'MaxIter', '100')

%J, grad = jgrad(theta,X,y)
%disp(J)
%disp(grad)


m = length(y); % number of training examples
h = X * theta;



case_0 = - (y' * log(h));
case_1 = -(1-y)' * log(1-h);





% You need to return the following variables correctly 
hypot = sigmoid(h);


J = (1/m) * (-y'*log(hypot)-(1-y)'*log(1-hypot));


disp(size(J))


grad = (1/m) .* (X'*(hypot-y));
%{
disp(size(grad));
disp(size(X'));
disp(size(hypot-y));
%}



%{
options =  optimset('GradObj', 'on', 'MaxIter', '100')

[optTheta,functionVal, exitFlag] = fminunc(@costFunction,theta,options)


% ===1=================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%

% Note: grad should have the same dimensions as theta
disp (optTheta)

 
 %gradient = 
%





%}

% =============================================================

end
