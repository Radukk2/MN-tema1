function [decoded_path] = decode_path (path, lines, cols)
	% path -> vector containing the order of the states that arrived
	% 		 to a winning position
	% lines -> numeber of lines
	% cols -> number of columns
	
	% decoded_path -> vector of pairs (line_index, column_index)
  %                 corresponding to path states
  % hint: decoded_path does not contain indices for the WIN state

  % TODO: decode_path implementation
    lung = length(path);
    decoded_path = zeros(lung - 1,2);
    for i=1:lung - 1
      decoded_path(i,1) = floor(path(i,1) / cols) + 1;
      if rem(path(i,1), cols) == 0
        decoded_path(i,1)--;
      endif
      decoded_path(i,2) = rem(path(i,1), cols);
      if rem(path(i,1), cols) == 0
        decoded_path(i,2) = cols;
      endif
    endfor
endfunction