function [Theta] = normal_equation(FeatureMatrix, Y, tol, iter)
  % FeatureMatrix -> the matrix with all training examples
  % Y -> the vector with all actual values
  % tol -> the learning rate
  % iter -> the number of iterations
  % tol -> the tolerance level for convergence of the conjugate gradient method

  % Theta -> the vector of weights
  
  % TODO: normal_equation implementation
  [rows, cols] = size(FeatureMatrix);
  x = zeros(cols,1);
  r = Y - FeatureMatrix * x;
  nr_iter = 1;
  v = r;
  tol = tol ^ 2;
  transpose(v) * FeatureMatrix;
  while nr_iter < iter && transpose(r) * r > tol
    t = (transpose(r) * r) / (transpose(v) * FeatureMatrix * v);
    x = x + t * v;
    r = r - t * FeatureMatrix * v;
    s = (transpose(r) * r)/ (t * transpose(v) * FeatureMatrix * v);
    v = r + s * v;
    nr_iter++;
  endwhile
  Theta = x;
endfunction