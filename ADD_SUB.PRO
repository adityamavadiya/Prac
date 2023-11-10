predicates
	compute(integer,integer)
	go
clauses
	go:-
	write("Enter your full name"),
	readln(Name),
	write("Enter two numbers"),
	readint(X),
	readint(Y),
	compute(X,Y),
	
	fronttoken(Name,FName,Rem),
	fronttoken(Rem,SName,_),
	frontchar(FName,FSym,_),
	str_char(FSymStr,FSym),
	frontchar(SName,SSym,_),
	str_char(SSymStr,SSym),
	concat(FSymStr,SSymStr,Acr),
	upper_lower(Caps,Acr),
	write("Bye bye ",Caps).
	
	compute(X,Y):-
	Sum=X+Y,
	write("The sum is ",Sum),nl,
	fail.
	
	compute(X,Y):-
	X>Y,
	Diff=X-Y,
	write("The difference is ",Diff),nl,
	write("Maximum is ",X),nl,
	S=sqrt(X),
	write("Square Root of max number is ",S),nl.
	
	compute(X,Y):-
	Diff=Y-X,
	write("The difference is ",Diff),nl,
	write("Maximum is ",Y),nl,
	S=sqrt(Y),
	write("Square Root of max number is ",S),nl,
	fail.
	compute(X,Y).