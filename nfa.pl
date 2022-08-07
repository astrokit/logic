%c(b|aa)* (dc)? 

initial1(q0).
final1(q0). 
final1(q1).

delta1(q0,c,q1).
delta1(q1,b,q1).
delta1(q1,a,q2).
delta1(q2,a,q1).

delta1(q1,d,q4).
delta1(q4,c,q0).

accept1(Xs) :- initial1(Q), accept1(Xs,Q).

accept1([],Q) :- final1(Q).
accept1([X|Xs],Q) :- delta1(Q,X,Q1), accept1(Xs,Q1).


%a+(a|cd)* |(bc*)

initial2(q0). 

final2(q1).
final2(q3).

delta2(q0,a,q1).
delta2(q1,a,q1).
delta2(q1,c,q2).
delta2(q2,d,q1).

delta2(q0,b,q3).
delta2(q3,c,q3).

accept2(Xs) :- initial2(Q), accept2(Xs,Q). 

accept2([],Q) :- final2(Q).
accept2([X|Xs],Q) :- delta2(Q,X,Q1), accept2(Xs,Q1).
