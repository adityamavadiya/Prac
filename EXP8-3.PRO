predicates
	start
clauses
	start:-write("Enter string: "),readln(X),nl,string(X),
	write("Enter number: "),readln(Y),nl,frontstr(X,Y,F,R),
	write(F).