function [Y, InitialMatrix] = parse_data_set_file(file_path)
  % path -> a relative path to the .txt file

  % Y -> the vector with all actual values
  % InitialMatrix -> the matrix that must be transformed
  
  % TODO: parse_data_set_file implementation
  fis = fopen(file_path, "r");
  m = fscanf(fis, "%d", 1);
  n = fscanf(fis, "%d", 1);
  InitialMatrix = cell(m,n);
  Y = cell(m,1);
  for i=1:m
    Y{i,1} = str2num(fscanf(fis, "%s", 1));
    for j=1:n
      InitialMatrix{i,j} = fscanf(fis, "%s", 1);
    endfor
  endfor
  Y = cell2mat(Y);
  fclose(fis);
endfunction