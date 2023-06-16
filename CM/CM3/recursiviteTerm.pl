nbElements2([], C, C).
nbElements2([X|Q], C, R) :- C1 is C + 1, nbElements2(Q, C1, R).