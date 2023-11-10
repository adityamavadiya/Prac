predicates
	start
	Res(symbol,integer,integer)
clauses
	start:-write("Student Name: "),readln(N),write(N),nl,
	write("Roll Number: "),readln(R),write(R),nl,
	write("Info of 3 subjects:- "),nl,Res(N,M,O).
	Res(N,M,O):-write("Name: "),readln(N),
	write(" Max marks: "),readint(M),
	write(" Obt. marks: "),readint(O),
	Res(N,M,O),nl,fail.