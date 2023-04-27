function [Adj] = get_adjacency_matrix (Labyrinth)
	% Labyrinth -> the matrix of all encodings
  
  % Adj -> the adjacency matrix associated to the given labyrinth
  
   [rows, cols] = size(Labyrinth);
  dim = rows * cols + 2; 
  Adj = zeros(dim);
  %Adj = sparse(Adj);
  a = 0;
  contor = 1;
  Adj(dim -1, dim -1) = 1;
  Adj(dim, dim) = 1;
  for i=1:rows
    for j=1:cols
      if rem(Labyrinth(i,j), 2) == 0
        if (contor - 1 > 0) 
          Adj(contor, contor - 1) = 1;
          Adj(contor - 1, contor) = 1;
        else
          Adj(contor, dim) = 1;
        endif
      endif
      if rem(Labyrinth(i,j), 4) < 1
        if (contor + 1 <= cols)
         Adj(contor, contor + 1) = 1;
          Adj(contor + 1, contor) = 1;
        else
          if rem(contor, cols) == 0
         Adj(contor, dim) = 1;
         endif
        endif
      endif
      if rem(Labyrinth(i,j), 8) < 4
        if (contor - cols > 0)
          Adj(contor - cols, contor) = 1;
          Adj(contor, contor - cols) = 1; 
        else
          if (j != cols)
          Adj(contor, dim - 1) = 1; 
          endif
        endif
      endif
      if rem(Labyrinth(i,j), 16) < 8
        if (contor + cols < dim - 1)
          Adj(contor + cols, contor) = 1;
          Adj(contor, contor + cols) = 1;
        else
          if (j != cols)
          Adj(contor, dim - 1) =  1;
          endif
        endif
      endif
      contor++;
    endfor
  endfor
  
endfunction