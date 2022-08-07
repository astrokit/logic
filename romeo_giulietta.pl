enemies(montecchi, capuleti).
enemies(capuleti, montecchi).
family(giulietta, capuleti).
family(romeo, montecchi).
drama(A, B) :- family(A, X), family(B, Y), enemies(X, Y).