trace
domains
    namelist = symbol*
     N = symbol
predicates
    member(symbol,namelist)
    delete(symbol,namelist,namelist)
clauses
    member(X,List):-
        delete(X,List,_). 
    delete(X,[X|Tail],Tail). 
        
    delete(X,[Y|Tail1],[Y|Tail2]):-
        delete(X,Tail1,Tail2).

