pair_helper(A, B, AB) :- [A,B] = AB.

cross_pair(A, B, AxB) :- cross_pair(A, B, 0, 0, 0, [], AxB).

cross_pair([X|A], [Y|B], A1, B1, I, Res, AxB) :-
  I = 0,
  I1 = 1,
  cross_pair(A, B, X, Y, I1, Res, AxB).

cross_pair([X|A], [Y|B], A1, B1, I, Res, AxB) :-
  I > 0,
  pair_helper(A1,Y,P1),
  pair_helper(B1,X,P2),
  T1 = [P1,P2],
  append(Res,T1,T),
  I1 = 0,
  cross_pair(A, B, X, Y, I1, T, AxB).
cross_pair([], [], X, Y, I, AxB, AxB).
