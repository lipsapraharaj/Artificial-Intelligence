/* OBJECTIVE : 

To write a prolog program to implement reverse(L, R) where List L is original and List
R is reversed list. 
 
*/


%CODE:

 /* append([],L,L) -> if the first list is empty and the second list is L,
    then the resultant list will be L */


append([],L,L):- !.  

append([H|L1],L2,[H|L3]):- append(L1,L2,L3). 

reverse([],[]):- !.

reverse([H|T],R):- reverse(T,L1),append(L1,[H],R). 



/**
 * WORKING:
 * 
 *  reverse([1,2,3],R)
 *    H=1, T=[2,3] => reverse([2,3],L1)
         reverse([2,3],R) 
           H=2, T=3 => reverse([3],L1)
           H=3, T=[] 
             reverse([3],R) 
               H=3, T=[] 
                 reverse([],R)
                 => reverse([],[])
                Moves to the base case i.e., reverse([],[]).

                After reaching the base case, if it exists then the next append
                will be executed.
                
                append([],[3],R) =>  base case
                 append([],[3],[3]) 
                  reverse([3],[3]) will be returned
                  when H=2 => append([3],[2],R) 
                    append([],[2],R) => base case

                    Return calls :

                     append([],[2],[2])
                      append([3],[2],[3,2])
                       reverse([2,3],[3,2])

                       Recursive calls:

                      append([3,2],[1],R) 
                       append([2],[1],R)
                        append([],[1],R) => base case 

                      Return calls:

                      append([], [1], R) 
                      append([], [1], [1]) 
                      append([2], [1], [2, 1]) 
*                       append([3, 2], [1], [3, 2, 1]) 
*                          reverse([1, 2, 3], [3, 2, 1]) 
*                           print R=[3,2,1].
*/