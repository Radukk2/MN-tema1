function [x, err, steps] = perform_iterative (G, c, x0, tol, max_steps)
   steps = 0;
   for i = 1:max_steps
     steps = steps + 1;
     x = G * x0 + c;
     err = norm(x - x0);
     if err < tol
       break;
     endif
     x0 = x;
   endfor
endfunction
