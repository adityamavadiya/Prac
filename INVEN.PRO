domains
	ino,qty,cost=integer
	desc,itype=string
	items=item(ino,desc,qty,cost)
predicates
	go
	inven(itype,items)
	search(string)
clauses
	inven("honda",item(1,"bike",5,10)).
	inven("esteem",item(2,"car",2,20)).
	go:-
		write("Enter Filter "),
		readln(Filter),
		search(Filter).
	search(Filter):-
		Filter="itype",
		write("Enter Item Type : "),
		readln(Val),
		inven(Val,item(INO,DESC,QTY,COST)),
		write("ITEM_TYPE = ",Val),nl,
		write("ITEM_NO = ",INO),nl,
		write("ITEM_DESCRIPTION = ",DESC),nl,
		write("ITEM_QUANTITY = ",QTY),nl,
		write("ITEM_COST = ",COST).
	search(Filter):-
			Filter="no",
			write("Enter the number"),
			readInt(Val),
			inven(Itype,item(Val,DESC,QTLY,COST)),
			write("ITEM_TYPE = ",Itype),nl,
			write("ITEM_NO = ",Val),nl,
			write("ITEM_DESC = ",DESC),nl,
			write("ITEM_QYT = ",QTLY),nl,
			write("ITEM_COST = ",COST),nl.
	search(Filter):-
			Filter="desc",
			write("Enter Description"),nl,
			readln(DESC),
			inven(IType,item(Val,DESC,QTLY,COST)),
			write("ITEM_TYPE = ",IType),nl,
			write("ITEM_NO = ", Val),nl,
			write("ITEM_DESC = ",DESC),nl,
			write("ITEM_QTLY = ",QTLY),nl,
			write("ITEM_COST = ",COST),nl.
	search(Filter):-
			write("Sorry filter not valid").