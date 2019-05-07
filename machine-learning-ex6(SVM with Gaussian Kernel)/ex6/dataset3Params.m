function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

c_vars = [0.10000, 0.300000, 1.00000];
sigma_vars = [0.10000, 0.30000, 1.00000];
pred_error = zeros(length(c_vars),length(sigma_vars));

for i=1:length(c_vars);
  for j=1:length(sigma_vars);
    model=svmTrain(X,y,c_vars(i), @(x1,x2) gaussianKernel(x1,x2,sigma_vars(j)));
    predictions = svmPredict(model, Xval);
    pred_error(i,j) = mean(double(predictions ~= yval));
    
  endfor
endfor


[va, in] = min(pred_error);
[vava, inin] = min(va);

C = c_vars(in(inin));
sigma = sigma_vars(inin);
% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.

%{
for i=c_vars;
  for j=sigma_vars;
    model=svmTrain(X,y,i, @(x1,x2) gaussianKernel(x1,x2,j));
    predictions = svmPredict(model, Xval);
    pred_error = mean(double(predictions ~= yval));
    
  endfor
endfor
%}
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%







% =========================================================================

end
