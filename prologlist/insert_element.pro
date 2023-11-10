domains
    x = integer
    l = integer*
    
predicates
    insert(x,l,l)
    delete(x,l,l)
    concatenate(l,l,l)
    
clauses
    concatenate([],L,L).

    concatenate([X|L1],L2,[X|L3]) :-
        concatenate(L1,L2,L3).
    
    delete(X,L,L1) :-
        concatenate(L3,[X|L2],L),
        concatenate(L3,L2,L1).

    insert(X,[],[X]).
            
    insert(X,L,L1) :-
        delete(X,L1,L).
