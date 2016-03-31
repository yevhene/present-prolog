conc([], L, L).
conc([X | L1], L2, [X | L3]) :- conc(L1, L2, L3).

/* Обьединение
?- conc([a], [b, c], X).
X = [a, b, c].
*/

/* Разница
?- conc([a], X, [a, b, c]).
X = [b, c].
*/

/* Варианты разбивки
?- conc(X, Y, [a, b, c]).
X = [],
Y = [a, b, c] ;
X = [a],
Y = [b, c] ;
X = [a, b],
Y = [c] ;
X = [a, b, c],
Y = [] ;
*/

% Принадлежность к списку.
member(X, L) :- conc(L1, [X | L2], L).

% Удаление из списка.
del(X, L, L1) :- conc([X], L1, L).
