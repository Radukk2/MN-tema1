function [Error] = linear_regression_cost_function(Theta, Y, FeatureMatrix)
  % Theta -> the vector of weights
  % Y -> the vector with all actual values
  % FeatureMatrix -> the matrix with all training examples

  % Error -> the error of the regularized cost function

  % TODO: linear_regression_cost_function implementation
  Theta(1) = [];
  Vect = FeatureMatrix * Theta;
  Error = sum((Vect - Y).^2);
  Error = Error /(2 * length(Y));
endfunction