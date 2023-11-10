predicates
	compare(integer,integer,integer)
clauses
	compare(X,Y,-1):-write("1 visited"),X<Y,!.
	compare(X,Y,0):-write("2 visited"),X=Y,!.
	compare(X,Y,1):-write("3 visited"),X>Y.