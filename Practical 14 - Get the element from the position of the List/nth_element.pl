nth_element(1, [H|_], H):- !.
nth_element(N, [_|L], X):- N1 is N-1,
                            nth_element(N1, L, X).
