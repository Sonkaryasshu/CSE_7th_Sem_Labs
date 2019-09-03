pow(0,0,undefined).
pow(0,_,0).
pow(_,0,1).
pow(N,P,A) :- P<0, pow(N,-P,A2), A is 1/A2.
pow(N,P,A) :- P>0, P1 is P-1, pow(N,P1,A1), A is N*A1.
