times3(X,Y) :- Y is X * 3.

map(L, F, R):- map(L, F, [], R).

map([X|L], F, Temp, R):-
  call(F, X, T1),
  append(Temp, [T1], Res),
  map(L, F, Res, R).
map([], F, R, R).