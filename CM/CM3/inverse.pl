/* Concaténation de 2 listes */
conc([],L2,L2).
conc([T|Q],L2,[T|R] ) :- conc(Q,L2,R).

/* inversion de 2 listes */
inverse([], []).
inverse([X|Q], R) :- inverse(Q, QL2), conc(QL2, [X], R).

/* inversion recursivité terminale */
inverse([], L, L).
inverse([X|Q], L, R) :- inverse(Q, [X|L], R).