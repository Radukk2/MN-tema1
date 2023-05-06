function [X_train, y_train, X_test, y_test] = split_dataset(X, y, percent)
  % X -> the loaded dataset with all training examples
  % y -> the corresponding labels
  % percent -> fraction of training examples to be put in training dataset
  
  % X_[train|test] -> the datasets for training and test respectively
  % y_[train|test] -> the corresponding labels
  
  % Example: [X, y] has 1000 training examples with labels and percent = 0.85
  %           -> X_train will have 850 examples
  %           -> X_test will have the other 150 examples
  % get number of examples and calculate number of training examples
  X_train = X((1:round(length(X) * percent)), :);
  y_train = y((1:round(length(X) * percent)), :);
  X_test = X((round(length(X) * percent) + 1:end), :);
  y_test = y((round(length(X) * percent) + 1:end), :);
endfunction
