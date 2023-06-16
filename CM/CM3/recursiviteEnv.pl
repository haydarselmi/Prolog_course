nbElements([], 0).
nbElements([X|Q], R) :- nbElements(Q, RQ), R is RQ + 1.