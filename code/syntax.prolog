dragon(falkor).
alignment(falkor, good).

dragon(smaug).
alignment(smaug, evil).

mother(tiamat, X) :- dragon(X), alignment(X, evil).
mother(daenerys, X) :- dragon(X).

