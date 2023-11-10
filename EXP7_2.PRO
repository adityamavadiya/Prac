predicates
	fib(integer,integer,integer)
clauses
	fib(F,_,0).
	fib(F,F1,C):-write(" "),write(F1),T1=F,T2=F+F1,C1=C-1,fib(T2,T1,C1).