/* fin de saisie */
carre(0) :- !, write(fin), fail.
/* traitement de saisie */
carre(N) :- N2 is N*N, write(N2), nl.
/* traitement entrée */
/* read_integer
   prends la saisie utilisateur
*/
traitement :- read_integer(N), carre(N).

/* boucle infinie
On attends la saisie de l'utilisateur
*/
boucle :- traitement, !, boucle.
boucle.