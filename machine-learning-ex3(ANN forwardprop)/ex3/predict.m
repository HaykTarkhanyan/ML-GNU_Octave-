function p = predictik(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)


% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);



X = [ones(size(X,1),1) X];


##disp(size(X))
##disp(Theta2)
#a2 = zeros(
z2 = X * Theta1';

z20 = sigmoid(z2);
a2 = [ones(size(z20,1),1) z20];

a222 = a2 * Theta2';

a3 = sigmoid(a222);
% You need to return the following v2ariabls correctly 
[maximals,indeces] = max(a3');

p = indeces';




% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%









% =========================================================================


end
