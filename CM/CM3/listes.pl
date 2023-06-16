membre(X, [X|Q]).
membre(X, [Y|Q]) :- membre(X, Q).

/* Concaténation de 2 listes */
conc([],L2,L2).
conc([T|Q],L2,[T|R] ) :- conc(Q,L2,R).

/*
Définir le prédicat impair(L1, L2) tel que L1 soit une liste contenant un nombre pair
d’éléments (exemple : [0, 1, 2, 3]) et L2 soit la liste des éléments de rang impair de L1 ([0,
2]).
*/
impair([], []).
impair([X,Y|Q], [X|Q2]) :- impair(Q, Q2).
