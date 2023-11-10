domains
	name,br=symbol
	rno,per=integer

database
	stu(rno,name,br,per)
	
predicates
	go
	check(integer)
	disp(rno,name,br,per)

clauses
	go:-
		write("1: Insert"),nl,
		write("2: Delete"),nl,
		write("3: Display one student"),nl,
		write("4: Display all student"),nl,
		readInt(C),
		check(C).
		
	check(1):-
		write("Enter student roll no: "),nl,
		readInt(Rno),nl,
		write("Enter Name: "),nl,
		readln(Name),nl,
		write("Enter branch: "),nl,
		readln(Br),nl,
		write("Enter percentage: "),nl,
		readInt(Per),nl,
		asserta(stu(Rno,Name,Br,Per)).
		
	check(2):-
		write("Enter student Roll No you want to delete: "),nl,
		readInt(Rno),nl,
		retract(stu(Rno,_,_,_)).
		
	check(3):-
		write("Enter student Roll No u want to display: "),nl,
		readInt(Rno),nl,
		disp(Rno,_,_,_).
		
	check(3):-
		write("Student not present in database. ").
		
	check(4):-
		write("Enter percentage to see all students: "),nl,
		readInt(P),nl,
		disp(_,_,_,P),nl.
		
	disp(R,N,B,P):-
		stu(R,N,B,P),
		write("Rno::Name::Branch::Percentage"),nl,
		write(R,"::",N,"::",B,"::",P),nl. 