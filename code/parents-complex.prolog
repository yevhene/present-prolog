% my name is Tom

% Ben is my father
father(ben, tom).

% Jan is my wife
married(tom, jan).

% Jan is mother of Joy
mother(jan, joy).

% Joy has born Ray, from my father Ben
mother(joy, ray).
father(ben, ray).

father_in_law(X, Y) :- married(X, Z), mother(Z, Y).
brother(X, Y) :- father(Z, X), father(Z, Y).
grandfather(X, Y) :- father_in_law(X, Z), mother(Z, Y).
grandfather(X, Y) :- grandfather(X, Z), brother(Z, Y).
