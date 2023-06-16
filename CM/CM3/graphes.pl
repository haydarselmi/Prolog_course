arc(a, b).
arc(a, c).
arc(b, e).
arc(b, d).
arc(c, d).
arc(d, f).
arc(e, f).

/* Il existe un arc direct */
chemin(D, A, []) :- arc(D, A).
/* Il existe des points d'étapes */
chemin(D, A, [X|Q]) :- arc(D, X), chemin(X, A, Q).