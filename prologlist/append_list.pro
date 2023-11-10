domains

    list=symbol*

    
predicates

    con(list,list,list)

    
clauses

    con([],L1,L1).
    
    con([X|Tail],L2,[X|Tail1]):-
        con(Tail,L2,Tail1).

