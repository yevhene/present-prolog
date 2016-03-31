% Fact
speaker(yevhen).

% Rule
speaker(X) :- has_slides(X).

% ?- has_slides(yevhen)
% true.
