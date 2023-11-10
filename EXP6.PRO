domains
	name,branch=symbol
predicates
	student(name,branch)
	rule(integer)
	check(symbol)
	start
clauses
	start:-write("Press 1 for list of all students"),nl,
	write("Press 2 for list of students in specified branch"),nl,
	write("Press 3 for list of students not is specified branch using not"),nl,
	write("Press 4 for list of students not in specified branch using cut"),nl,
	write("Enter your choice: "),readint(X),rule(X).
	
	student("Karen","CE").
	student("Farhan","IT").
	student("Stan","IT").
	student("Kane","EC").
	student("Preeti","CE").
	student("Giya","EC").
	
	rule(1):-student(X,_),write(X),nl,fail.
	
	rule(2):-write("Enter the branch: "),readln(Z),student(X,Z),
	write(X),nl,fail.
	
	rule(3):-write("Enter the branch: "),readln(Z),student(X,Y),
	not(Y=Z),write(X),nl,fail.
	
	rule(4):-student(X,Y),check(Y),
	write(X),nl,fail.
	
	check("IT"):-!,fail.
	check(_).