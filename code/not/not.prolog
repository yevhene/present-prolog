not(P) :- P, !, fail; true.

small(X) :- animal_weight(X, Y), Y < 500.
big(X) :- not(small(X)).

eligible_for_noah_ark(X) :- big(X), herbivorous(X).
eligible_for_noah_ark(X) :- small(X), predator(X).
