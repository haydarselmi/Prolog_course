/* Concaténation de 2 listes */
conc([],L2,L2).
conc([T|Q],L2,[T|R] ) :- conc(Q,L2,R).

/* quiscksort recursion enveloppée */
/* reorganise compare les éléments de la Queue et
    les insère soit dans L1 soit dans L2 si élément est <= ou >
    que P pivot
*/

reorganise([], P, [], []).
reorganise([X|Q], P, [X|L1], L2) :- X =< P, reorganise(Q, P, L1, L2).
reorganise([X|Q], P, L1, [X|L2]) :- X > P, reorganise(Q, P, L1, L2).

qs1([], []).
qs1([P|Q], R) :- reorganise(Q, P, L1, L2), qs1(L1, R1), qs1(L2, R2), conc(R1, [P|R2], R).

/* quiscksort recursion terminale */
qs2([], A, A).
qs2([P|Q], A, R) :- reorganise(Q, P, L1, L2), qs2(L2, A, A2), qs2(L1, [P|A2], R).