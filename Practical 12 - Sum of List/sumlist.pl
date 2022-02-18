sumlist([],0).   % Base case
  
sumlist([H|T],S):- sumlist(T,R1),   % Recursive case
                   S is H+R1.