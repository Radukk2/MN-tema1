function [Link] = get_link_matrix (Labyrinth)
	% Labyrinth -> the matrix of all encodings
  
  % Link -> the link matrix associated to the given labyrinth
  Link = get_adjacency_matrix(Labyrinth);
  [rows,cols] = size(Link);
  v = zeros(rows,1);
  for i=1:rows
    for j=1:cols
      if Link(i,j) != 0
        v(i,1)++;
        endif
    endfor
  endfor
  for i=1:rows
    for j=1:rows
      Link(i,j) = Link(i,j) / v(i,1);
    endfor
  endfor
endfunction
