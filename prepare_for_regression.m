function [FeatureMatrix] = prepare_for_regression(InitialMatrix)
  % InitialMatrix -> the matrix that must be transformed

  % FeatureMatrix -> the matrix with all training examples
  
  % TODO: prepare_for_regression implementation
  FeatureMatrix = InitialMatrix;
  [rows, cols] = size(FeatureMatrix);
  for i=1:rows
    for j=1:cols
      if strcmp(FeatureMatrix(i,j), "yes") == 1
        FeatureMatrix(i,j) = 1;
      elseif strcmp(FeatureMatrix(i,j), "no") == 1
        FeatureMatrix(i,j) = 0;
      elseif strcmp(FeatureMatrix(i,j), "furnished") == 1
        FeatureMatrix(i,j) =[0,0];
      elseif strcmp(FeatureMatrix(i,j), "unfurnished") == 1
        FeatureMatrix(i,j) =[0,1];
      elseif strcmp(FeatureMatrix(i,j), "semi-furnished") == 1
        FeatureMatrix(i,j) =[1,0];
      else
        FeatureMatrix(i,j) = str2double(FeatureMatrix(i,j));
      endif
    endfor
  endfor
  FeatureMatrix = cell2mat(FeatureMatrix);
endfunction