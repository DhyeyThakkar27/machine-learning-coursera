
%%%%%%%%%%%%% BACKPROPOGATION %%%%%%%%%%%%%
delta3 = (h-y)';              %10,5000
delta2 = Theta2'*delta3;  	  %26,5000	
delta2 = delta2.*sigmoidGradient(af);
delta2 = delta2(2:end,:);     	%25,5000

%Theta1_grad = Theta1_grad + delta2*a1''            //This was from pdf
%25*401			25*401     + (25*5000)*	(5000*401)								 
%Theta2_grad = Theta2_grad + delta3* 

Theta1_grad = Theta1_grad + delta2*X;  
Theta2_grad = Theta2_grad + delta3*z1;
Theta1_grad = Theta1_grad/m;
Theta2_grad = Theta2_grad/m; 

