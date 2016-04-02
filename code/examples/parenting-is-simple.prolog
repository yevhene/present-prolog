parent_of(abraham, isaak).
parent_of(isaak, jacob).
parent_of(jacob, judah).

ancestor_of(X, Y) :- parent_of(X, Y).
ancestor_of(X, Y) :- parent_of(X, Z), ancestor_of(Z, Y).
