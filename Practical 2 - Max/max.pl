/*Write a Prolog program to implement max(X, Y, M) so that M is the maximum of two
numbers X and Y.*/

max(X,Y,M):-
(  
 X=Y ->              % Case 1 : Both X and Y are equal numbers.
  write('Both the numbers are equal.')
 ;
 X>Y ->              % Case 2 : When X>Y and max is X.
  (
  M is X 
  );
  
  (
  M is Y             % Case 3 : When X<Y or Y>X and max is Y.      
  ) 
).
