domains
    x = integer
    l = integer*
    
predicates
    concatenate(l,l,l)
    delete(x,l,l)
    insert(x,l,l)
    permutation(l,l)
    
clauses
    concatenate([],L,L).
    
    concatenate([X|L1],L2,[X|L3]) :-
        concatenate(L1,L2,L3).
        
    delete(X,L,L1) :-
        concatenate(L3,[X|L2],L),
        concatenate(L3,L2,L1).
        
    insert(X,L1,L) :-
        delete(X,L,L1).
        
    permutation([X],[X]).
    
    permutation([X|T],L) :-
        permutation(T,T1),
        insert(X,T1,L).
