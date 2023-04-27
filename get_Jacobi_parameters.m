function [G, c] = get_Jacobi_parameters (Link)
	% Link -> the link matrix (edge with probabilities matrix)
	
  % G -> iteration matrix
	% c -> iteration vector
	
  % TODO: get_Jacobi_parameters
  [rows,cols] = size(Link);
   G = Link(1:rows - 2, 1:cols - 2);
   c = Link(1:rows - 2, cols -1);
endfunction
