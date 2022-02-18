/* OBJECTIVE : 
 
To write a prolog program toimplement palindrome(L) which checks whether a 
list L is a palindrome or not.

*/

% CODE:

palindrome([]):- write('LIST IS EMPTY.').  

palindrome([_]):- write('LIST IS PALINDROME.').  

palindrome(L) :- append([H|T], [H], L), 
                  !,       
                  palindrome(T);
                  write('LIST IS NOT A PALINDROME!!').


 /**
 * WORKING:
 * 
 *  palindrome([1,2,1]) => append([H|T],[H],[1,2,1])
      append([1,2],[1],[1,2,1]) => H=1, T=2
        It checks the first and last element, if they are same,
         then it removes that from the list and it proceeds with second and 
          second last element and so on.

          When only one element is left in the list:
            palindrome([2]) => palindrome([_]) => base case
*             print  LIST IS PALINDROME.                              
*                                         
*/                   