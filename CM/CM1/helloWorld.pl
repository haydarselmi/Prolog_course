/* Exemple de faits */
mot('hello').
mot('world').

/* Exemple de règle */
/* est interpreté comme un ET logique et \= opérateur différent */
doubleMot(X, Y) :- mot(X), mot(Y), X \= Y.

/* règle pour respecter que l'ordre hello world il n'intervertit jamais l'ordre */
avant(X, Y) :- compare('<', X, Y). 

/* Exemple de question pseudo-règle juste pour mémoriser la question */
question :- doubleMot(X, Y), avant(X, Y), write(' '), write(X), write(' '), write(Y).
