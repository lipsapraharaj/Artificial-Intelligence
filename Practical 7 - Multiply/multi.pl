/* Prolog program to implement multi (N1, N2, R) : where N1 and N2 denotes the
numbers to be multiplied and R represents the result. */

multi(N, 1, N).

multi(N1, N2, R) :- T is N2 - 1,
                    multi(N1, T, Y),
                    R is Y + N1.
