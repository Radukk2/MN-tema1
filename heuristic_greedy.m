function [path] = heuristic_greedy (start_position, probabilities, Adj)
	% start_position -> the starting point in the labyrinth
	% probabilities -> vector of associated probabilities: including WIN and LOSE
	% Adj -> adjacency matrix
	
	% path -> the states chosen by the algorithm
  
  % TODO: heuristic_greedy implementation
  path = start_position;
  [rows, cols] = size(Adj);
  visited = zeros(rows);
  visited(start_position) = 1;
  while size(path) != 0
    position = path(end);
    if position == rows - 1
      path;
      return;
    endif
    pas = 0;
    for i=1:rows
      visited(i)
      %Adj(position,i)
      if Adj(position,i) == 1 && visited(i) == 0
        pas++;
        endif
     endfor
     if (pas == 0)
       path(end) = [];
     else
       max = -1;
       for i=1:rows - 2
         if max < probabilities(i) && Adj(position,i) == 1 && visited(i) == 0
           max = probabilities(i);
         endif
       endfor
       for i=1:rows - 2
         if max == probabilities(i) && Adj(position,i) == 1 && visited(i) == 0
           visited(i) = 1;
           path(end) = i;
         endif
       endfor
     endif
  endwhile
  path ;
  return;
endfunction
