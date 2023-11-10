domains
    l = integer*
    
predicates
    printlist(l)
    
clauses
	printlist([]).
    
    printlist([X|List]) :-
        write(X),nl,
        printlist(List).
