function [J grad] = nnCostFunction(nn_params, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, ...
                                   X, y, lambda)
%'NNCOSTFUNCTION Implements the neural network cost function for a two layer
%neural network which performs classification
%   [J grad] = NNCOSTFUNCTON(nn_params, hidden_layer_size, num_labels, ...
%   X, y, lambda) computes the cost and gradient of the neural network. The
%   parameters for the neural network are "unrolled" into the vector
%   nn_params and need to be converted back into the weight matrices. 
% 
%   The returned parameter grad should be a "unrolled" vector of the
%   partial derivatives of the neural network.
%

% Reshape nn_params back into the parameters Theta1 and Theta2, the weight matrices
% for our 2 layer neural network'
%
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));			%%%25,401

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));    %%%10,26

% Setup some useful variables
m = size(X, 1);
         
% You need to return the following variables correctly 
J = 0;
Theta1_grad = zeros(size(Theta1));
Theta2_grad = zeros(size(Theta2));


% ====================== YOUR CODE HERE ======================
% Instructions: You should complete the code by working through the
%               following parts.
%
% Part 1: Feedforward the neural network and return the cost in the
%         variable J. After implementing Part 1, you can verify that your
%         cost function computation is correct by verifying the cost
%         computed in ex4.m
%
% Part 2: Implement the backpropagation algorithm to compute the gradients
%         Theta1_grad and Theta2_grad. You should return the partial derivatives of
%         the cost function with respect to Theta1 and Theta2 in Theta1_grad and
%         Theta2_grad, respectively. After implementing Part 2, you can check
%         that your implementation is correct by running checkNNGradients
%
%         Note: The vector y passed into the function is a vector of labels
%               containing values from 1..K. You need to map this vector into a 
%               binary vector of 1's and 0's to be used with the neural network
%               cost function.
%
%         Hint: We recommend implementing backpropagation using a for-loop
%               over the training examples if you are implementing it for the 
%               first time.
%
% Part 3: Implement regularization with the cost function and gradients.
%
%         Hint: You can implement this around the code for
%               backpropagation. That is, you can compute the gradients for
%               the regularization separately and then add them to Theta1_grad
%               and Theta2_grad from Part 2.
%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%PART 1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

X = [ones(m,1) X];
a1=X;
z2 = Theta1*X'; %'  %25 * 5000
a2 = sigmoid(z2);
a2 = [ones(1,m); a2];
z3 = Theta2*a2;
h = sigmoid(z3);
y1 = zeros(num_labels,m);
for x=1:m
	y1(y(x),x) = 1;
end
J=y1.*log(h) + (1-y1).*log(1-h);
J = sum(J,1);
J = sum(J);
J = -J;
J = J/m;    %10*5000


%%%%%%%%%%%%%%% REGULARIZATION %%%%%%%%%%%%%%%%%%%%%%%%%%
T1 = sum((Theta1.*Theta1)(:,2:end));
T1 = sum(T1);
T2 = sum((Theta2.*Theta2)(:,2:end));
T2 = sum(T2); 
T1 = lambda*T1;
T2 = lambda*T2;
T1 = T1/2;
T2 = T2/2;
T1 = T1/m;
T2 = T2/m;
J = J + T1 + T2;





%%%%%%%%%%%%%%%%% APPLYING BLACK PROPOGATION   %%%%%%%%%%%%%%%%%%%%%%
z2 = [ones(1,m);z2];
delta3 = h - y1;
delta2 = Theta2'*delta3.*sigmoidGradient(z2);  %'
delta2 = delta2(2:end,:);
Theta1_grad = Theta1_grad + delta2*a1;    % 25 * 401
Theta2_grad = Theta2_grad + delta3*a2';   %'10 * 26
Theta2_grad = Theta2_grad/m;
Theta1_grad = Theta1_grad/m;
lambda = lambda/m;
Theta1_grad(:,2:end) = Theta1_grad(:,2:end) + lambda*Theta1(:,2:end); 
Theta2_grad(:,2:end) = Theta2_grad(:,2:end) + lambda*Theta2(:,2:end);
% -------------------------------------------------------------

% =========================================================================

% Unroll gradients
grad = [Theta1_grad(:) ; Theta2_grad(:)];


end
