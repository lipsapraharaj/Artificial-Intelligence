palindrome([]):- write('LIST IS EMPTY.').   % Base case

palindrome([_]):- write('LIST IS PALINDROME.').  % Base case

palindrome(L) :- append([H|T], [H], L),          % Recursive case
                    palindrome(T);
                    write('LIST IS NOT A PALINDROME!!').
