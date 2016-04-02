% Ben is Tom's father
father_of(ben, tom).

% Jan is Tom's wife
married_on(tom, jan).

% Jan is mother of Joy
mother_of(jan, joy).

% Joy has born Ray, from Tom's father Ben
mother_of(joy, ray).
father_of(ben, ray).

father_in_law_of(X, Y) :- married_on(X, Z), mother_of(Z, Y).
brother_of(X, Y) :- father_of(Z, X), father_of(Z, Y).
grandfather_of(X, Y) :- father_in_law_of(X, Z), mother_of(Z, Y).
grandfather_of(X, Y) :- grandfather_of(X, Z), brother_of(Z, Y).
