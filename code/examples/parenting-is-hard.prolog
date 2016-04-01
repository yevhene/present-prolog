% Ben is Tom's father
father(ben, tom).

% Jan is Tom's wife
married(tom, jan).

% Jan is mother of Joy
mother(jan, joy).

% Joy has born Ray, from Tom's father Ben
mother(joy, ray).
father(ben, ray).

father_in_law(X, Y) :- married(X, Z), mother(Z, Y).
brother(X, Y) :- father(Z, X), father(Z, Y).
grandfather(X, Y) :- father_in_law(X, Z), mother(Z, Y).
grandfather(X, Y) :- grandfather(X, Z), brother(Z, Y).
