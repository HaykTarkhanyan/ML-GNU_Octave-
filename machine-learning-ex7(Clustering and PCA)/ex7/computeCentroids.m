function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%
##sizes = 0;
%{
for i=1:K;
  for j=1:length(idx)  
    if idx(j)==i
      classbelongers(i) =  X(j,:)
    endif
  endfor
endfor
%}

idx;

len = 0;

index = (idx==1);
X(index,:);

##for i=1:length(idx)
  for j=1:K
    index = (idx==j);
    
    for i=1:length(index);
      if index(i)==1
        
        len++;
      endif
    endfor
    centroids(j,:) = sum(X(index,:))/len;
    len=0;
    
  endfor
  
##  elem
##endfor


% =============================================================


end

