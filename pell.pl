%pell(N,P) :- pell(I,T1,T2,Res,N,P).

pell(N,P) :- pell(1,0,1,[0,1],N,P).

pell(I,T1,T2,Res,N,P):- N = 0, P = [0].
pell(I,T1,T2,Res,N,P):- N = 1, P = [0,1].

pell(I,T1,T2,Res,N,P):- 
  N > 1,
  I < N,
  T3 is 2 * T2 + T1,
  append(Res,[T3],R),
  I1 is I+1,
  pell(I1,T2,T3,R,N,P).
pell(N,T1,T2,P,N,P).
