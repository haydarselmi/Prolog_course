/* 2 types de prédicats primaire faits et définies */
/* Joseph est le pére de John */
pere(joseph, john).
/* foncteur propriété(arg1, arg2) */
pere(joseph, robert).
pere(joseph, edward).
pere(john, john_john).
pere(john, caroline).
pere(robert, kathleen).
/* les faits sont toujours ordonnées */
/* les foncteurs n'ont pas de commutativité donc si symétrie réecrire les faits symétriques */

mere(rose, edward).
mere(rose, john).
mere(rose, robert).
mere(rose, rose_marie).

/* grand mère maternelle */
grand_mere(X, Y) :- mere(X, Z), mere(Z, Y).
/* grand mère parternelle */
grand_mere(X, Y) :- mere(X, Z), pere(Z, Y).

/* genre */
homme(joseph).
homme(john).
homme(robert).
homme(edward).
homme(john_john).

femme(rose).
femme(rose_marie).
femme(caroline).
femme(kathleen).

/* prédicat question frere */
/* Ils ont le même père */
frere(X, Y) :- pere(Z, X), pere(Z, Y), homme(X), homme(Y).
/* Ils ont la même mère */
frere(X, Y) :- mere(Z, X), mere(Z, Y), homme(X), homme(Y).