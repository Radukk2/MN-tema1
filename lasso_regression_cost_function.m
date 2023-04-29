function [Error] = lasso_regression_cost_function(Theta, Y, FeatureMatrix, lambda)
  % Theta -> the vector of weights
  % Y -> the vector with all actual values
  % FeatureMatrix -> the matrix with all training examples
  % lambda -> regularization parameter that controls the amount of 
  %           shrinkage applied to the regression coefficients

  % Error -> the error of the regularized cost function

  % TODO: lasso_regression_cost_function implementation
  Theta(1) = [];
  Vect = FeatureMatrix * Theta;
  Error = sum((Y - Vect).^2);
  Error = Error /(length(Y));
  lambda = norm(Theta, 1);
  Error = Error + lambda;
endfunction