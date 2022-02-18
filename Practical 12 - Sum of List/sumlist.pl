sumlist([],0).   % Base case
  
sumlist([H|T],R):- sumlist(T,R1),   % Recursive case
                   R is H+R1.
