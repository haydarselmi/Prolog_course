/*
Fait = un prédicat dont les arguments sont des atomes les arguments sont liées.
Règle = prédicat ayant des variables libres.
*/
possede(jean,animal(chat)).
possede(jean,animal(chien)).
possede(jean,livre(critiqueDeLaRaisonPure,auteur(emmanuel,kant))).
possede(jean,livre(lesRobots, auteur(isaac, asimov))).
possede(jean, voiture(electrique)).

/* jean aime les animaux qu'il possède */
aimeAnimal(jean, X) :- possede(jean, animal(X)).
/* jean aime les livres qu'il possède */
aimeLivre(jean, X) :- possede(jean, livre(Z, auteur(Y, X))).