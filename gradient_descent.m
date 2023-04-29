function [Theta] = gradient_descent(FeatureMatrix, Y, n, m, alpha, iter)
  % FeatureMatrix -> the matrix with all training examples
  % Y -> the vector with all actual values
  % n -> the number of predictors
  % m -> the number of trainings
  % alpha -> the learning rate
  % iter -> the number of iterations

  % Theta -> the vector of weights

  % TODO: gradient_descent implementation
  Theta = zeros(n,1);
  sum = zeros(n,1);
  for nr=1:iter
    Vect = FeatureMatrix * Theta;
    for j=1:n
      for i=1:m
      sum(j,1) += ((Vect(i,1) - Y(i,1)).^2) .* FeatureMatrix(i,j);
    endfor
    sum(j,1) = sum(j,1) / m;
    Theta(j,1) = Theta(j,1) - alpha * sum(j,1);
  endfor
  Theta = Theta - alpha * sum;
endfor
Theta = [0; Theta];
endfunction