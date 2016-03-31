male(father_of_my_mother).
parent(father_of_my_mother, my_mother).

female(mother_of_my_mother).
parent(mother_of_my_mother, my_mother).

female(my_mother).
parent(my_mother, me).

male(father_of_my_father).
parent(father_of_my_father, my_father).

female(mother_of_my_father).
parent(mother_of_my_father, my_father).

female(my_father).
parent(my_father, me).

father(X, Y) :- male(X), parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

grandfather(X, Y) :- male(X), grandparent(X, Y).
grandmother(X, Y) :- female(X), grandparent(X, Y).

% ?- grandfather(X, me).
% X = father_of_my_mother ;
% X = father_of_my_father.
