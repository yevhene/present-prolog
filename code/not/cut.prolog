small(X) :- weight_of(X, Y), Y < 500.
big(X) :- weight_of(X, Y), Y >= 500.

eligible_for_noah_ark(X) :- big(X), !, herbivorous(X).
eligible_for_noah_ark(X) :- small(X), !, predator(X).
