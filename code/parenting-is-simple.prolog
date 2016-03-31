parent(abraham, isaak).
parent(isaak, jacob).
parent(jacob, judah).

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).
