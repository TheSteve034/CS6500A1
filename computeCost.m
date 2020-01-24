function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
theta0 = theta(1);
theta1 = theta(2);
loopCount = rows(X);
i = 1;
total = 0;

while(i < loopCount+1)
  xVal = X(i,[2]);
  yVal = y(i);
  temp = ((theta0 + (theta1*xVal)) - yVal)^2;
  total = total + temp;
  i = i + 1;
endwhile

J = total/(2*m); 
%disp("Inital cost is :"); 
%disp(J);
return;
% =========================================================================

end
