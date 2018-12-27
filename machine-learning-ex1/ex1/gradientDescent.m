function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values

m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
d_J = [0,0];



    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %



for iter = 1:num_iters
    
    d_J = (X*theta - y);    
    d_J = X'*d_J;       
    d_J = d_J/m;

for i = 1:length(X(1,:))
    theta(i) = theta(i) - alpha*d_J(i);
end



%     J = computeCost(X, y, theta);
%     for k = 1:m    
%         d_J(1) = d_J(1) + (( theta(1)*X(k,1) + theta(2)*X(k,2) - y(k) )*X(k,1));
%         d_J(2) = d_J(2) + (( theta(1)*X(k,1) + theta(2)*X(k,2) - y(k) )*X(k,2));
%     end
%     d_J(1) = d_J(1)/m;
%     d_J(2) = d_J(2)/m;
%     
%     theta(1) = theta(1) - alpha*d_J(1);
%     theta(2) = theta(2) - alpha*d_J(2);



    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end



end
