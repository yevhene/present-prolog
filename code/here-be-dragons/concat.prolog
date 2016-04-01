conc([], L, L).
conc([X | L1], L2, [X | L3]) :- conc(L1, L2, L3).

member(X, L) :- conc(_, [X | _], L).

sublist(S, L) :- conc(L1, L2, L), conc(S, L3, L2).
