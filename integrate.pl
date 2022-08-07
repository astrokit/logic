f(X, Y) :- Y is X^2.

integrate(A, B, N, F, R) :-
  H is (B - A) / N,
  call(F, A, A1),
  call(F, B, B1),
  R0 is 0.5 * (A1 + B1) * H,
  integrate(1, A, B, N, H, F, R0, R).

integrate(I, A, B, N, H, F, T, R) :-
  I < N,
  X is A + I * H,
  call(F, X, Y),
  T2 is T + (Y * H),
  I1 is I + 1,
  integrate(I1, A, B, N, H, F, T2, R).
integrate(N, A, B, N, H, F, R, R).

