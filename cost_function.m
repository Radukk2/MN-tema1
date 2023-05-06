function [J, grad] = cost_function(params, X, y, lambda, input_layer_size, hidden_layer_size, output_layer_size)

  % params -> vector containing the weights from the two matrices
  %           Theta1 and Theta2 in an unrolled form (as a column vector)
  % X -> the feature matrix containing the training examples
  % y -> a vector containing the labels (from 1 to 10) for each
  %      training example
  % lambda -> the regularization constant/parameter
  % [input|hidden|output]_layer_size -> the sizes of the three layers
  
  % J -> the cost function for the current parameters
  % grad -> a column vector with the same length as params
  % These will be used for optimization using fmincg
  
  % TODO: cost_function implementation

  % TODO1: get Theta1 and Theta2 (from params). Hint: reshape
  
  % TODO2: Forward propagation
  
  % TODO3: Compute the error in the output layer and perform backpropagation
  
  % TODO4: Determine the gradients
  
  % TODO5: Final J and grad
  Theta1 = reshape(params(1:hidden_layer_size * (input_layer_size + 1)), hidden_layer_size, (input_layer_size + 1))
  Theta2 = reshape(params(((hidden_layer_size * (input_layer_size + 1) + 1)):end), output_layer_size, (hidden_layer_size + 1))
  [r1,r2] = size(X);
 a1 = transpose([ones(r2, 1) X]);
  z2 = Theta1 * a1;
  a2 = sigmoid(z2);
  a2 = transpose([ones(r2,1), transpose(a2)])
  z3 = Theta2 * a2;
  a3 = sigmoid(z3);
  sum1 = sum(sum(Theta1));
  sum2 = sum(sum(Theta2));
  sum_tot = (sum1 + sum2) * lambda / (2 * m);
  
  endfunction
