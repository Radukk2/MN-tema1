function [Theta] = normal_equation(FeatureMatrix, Y, tol, iter)
  % FeatureMatrix -> the matrix with all training examples
  % Y -> the vector with all actual values
  % tol -> the learning rate
  % iter -> the number of iterations
  % tol -> the tolerance level for convergence of the conjugate gradient method

  % Theta -> the vector of weights
  
  % TODO: normal_equation implementation
  [rows, cols] = size(FeatureMatrix);
  A = transpose(FeatureMatrix) * FeatureMatrix;
  Theta = zeros(cols + 1,1);
  eigvals = eig(A);
  if !all(eigvals > 0)
    Theta;
    return;
  endif
  x = zeros(cols,1);
  b = transpose(FeatureMatrix) * Y;
  r = b - A * x;
  nr_iter = 1;
  v = r;
  tol = tol ^ 2;
  while nr_iter < iter && transpose(r) * r > tol
    t = (transpose(r) * r) / (transpose(v) * A * v);
    x = x + t * v;
    r = r - t * A * v;
    s = (transpose(r) * r)/ (t * transpose(v) * A * v);
    v = r + s * v;
    nr_iter++;
  endwhile
  Theta = [0;x];
endfunction