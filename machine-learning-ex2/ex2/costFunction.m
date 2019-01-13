function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values

% y = [1 1 1 1 1];
% X = [1 1 1 1 1; 10 0 0 0 10];
% X = [1 0; 1 0; 1 0; 1 0; 1 0;];
% theta = [1;2];

m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

z = X*theta;
hyp = sigmoid(z);
J = -y'*log(hyp) -(1.-y')*log(1.-hyp);
J = J/m;


grad = (hyp'-y')*X; 
grad = grad/m;


% =============================================================

end
