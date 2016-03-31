:- use_module(library(clpfd)).

fact(0, 1).
fact(N, F) :-
    N > 0,
    N1 is N - 1,
    fact(N1, F1),
    F is N * F1.


factn(0, 1).
factn(N, F) :-
    N #> 0,
    N1 #= N - 1,
    factn(N1, F1),
    F #= N * F1.


