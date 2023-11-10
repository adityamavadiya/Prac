domains
name,branch = symbol
sem,percent = integer
database
student(name,branch,sem,percent)
predicates
start
list(integer)
clauses
start:- clearwindow(),
write("1. Enter new Student Details"),nl,
write("2. Delete a Student Details"),nl,
write("3. Display Student Details"),nl,
write("4. Display list of students having % greater then specified %"),nl,
write("5. Display list of all Students :"),nl,
write("Enter choice : "),
readInt(In),
list(In).
list(1):-
write("Enter Student Name : "),readln(Name),
write("Enter Branch : "),readln(Branch),
write("Enter Sem : "),readInt(Sem),
write("Enter Percentage : "),
readInt(Percentage),
asserta(student(Name,Branch,Sem,Percentage)),
save("student.txt").
list(2):-
write("Enter Student Name : "),readln(Name),
consult("student.txt"),
retract(student(Name,_,_,_)),
save("student.txt").
list(3):-
write("Enter Student Name : "),readln(Name),
consult("student.txt"),
student(Name,X,Y,Z),
write("Name : ",Name," Branch : ",X," Sem : ",Y," Percent : ",Z),nl.
list(4):-
write("Enter Percentage : "),readInt(Percent),
consult("student.txt"),
student(N,B,S,X),
X>Percent,
write("Name : ",N," Branch : ",B," Sem : ",S," Percent : ",X),nl,fail.
list(5):-
consult("student.txt"),student(W,X,Y,Z),
write("Name : ",W," Branch : ",X," Sem : ",Y," Percent : ",Z),nl,fail.
