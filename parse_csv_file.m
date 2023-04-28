function [Y, InitialMatrix] = parse_csv_file(file_path)
  % path -> a relative path to the .csv file
  
  % Y -> the vector with all actual values
  % InitialMatrix -> the matrix that must be transformed

  % TODO: parse_csv_file implementation
  fis = fopen(file_path, "r");
  indice = 1;
  InitialMatrix = cell();
  while !feof(fis)
    line = fscanf(fis, "%s", 1);
    if (indice > 1)
      [Y{indice,1},sir] = strtok(line, ',');
      Y{indice,1} = str2num(Y{indice,1});
      [tok,sir] = strtok(sir, ',');
      j = 1;
      while(!isempty(tok))
        sir
        InitialMatrix(indice - 1,j) = tok;
        j++;
        [tok,sir] = strtok(sir, ',');
      endwhile
    endif
    indice++;
  endwhile
  Y = cell2mat(Y);
  fclose(fis);
endfunction