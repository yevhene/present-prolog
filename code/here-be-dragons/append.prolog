append([], L, L).
append([X | L1], L2, [X | L3]) :- append(L1, L2, L3).

member(X, L) :- append(_, [X | _], L).

sublist(S, L) :- append(L1, L2, L), append(S, L3, L2).
