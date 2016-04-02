dragon(falkor).
is_aligned(falkor, good).

dragon(smaug).
is_aligned(smaug, evil).

mother_of(tiamat, X) :- dragon(X), is_aligned(X, evil).
mother_of(daenerys, X) :- dragon(X).

