range_product(From,To,Res) :- range_product(From,From,To,Res).

range_product(T,From,To,Res) :-
	From < To,
	F1 is From+1,
	T1 is T*F1,
	range_product(T1,F1,To,Res). 
range_product(Res,To,To,Res). 