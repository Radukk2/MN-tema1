function [Error] = linear_regression_cost_function(Theta, Y, FeatureMatrix)
  % Theta -> the vector of weights
  % Y -> the vector with all actual values
  % FeatureMatrix -> the matrix with all training examples

  % Error -> the error of the regularized cost function

  % TODO: linear_regression_cost_function implementation
  Vect = FeatureMatrix * Theta;
  Error = 0;
  for i=1:length(Y)
    Error += (Vect(i,1) - Y(i,1))^2;
  endfor
  Error = Error /(2 * length(Y));
endfunction