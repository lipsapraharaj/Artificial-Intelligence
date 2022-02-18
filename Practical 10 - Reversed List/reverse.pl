/* append([],L,L) -> if the first list is empty and the second list is L,
    then the resultant list will be L */


append([],L,L).  % Base Case

append([H|L1],L2,[H|L3]):- append(L1,L2,L3). % Recursive Case

reverse([],[]).  % Base Case

reverse([H|T],R):- reverse(T,L1),append(L1,[H],R).  % Recursive Case
