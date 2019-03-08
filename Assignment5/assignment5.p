

max([X],Res):-Res =X.
max([H,Y|T],Res):-Y>H,max([Y|T],Res).
max([H,Y|T],Res):-Y<H,max([H|T],Res).

deleteNList(Num,L,L1):-deleteNList(Num,L,L1,Num).
deleteNList(_,[],[],_).
deleteNList(Num,[_|T],B,1):-deleteNList(Num,T,B,Num).
deleteNList(Num,[H|T],[H|B],Num2):- Num2>1,Num3 is Num2-1, deleteNList(Num,T,B,Num3).



replace_first_k(_,[],_).
replace_first_k(0,List,Res):-Res=List.
replace_first_k(A,[M|N],[M|Res]):- M>1,replace_first_k(A,N,Res).
replace_first_k(A,[M|N],[O|Res]):- M==1,A1 is A-1, O=8,replace_first_k(A1,N,Res).


position(_,[],Res):-Res=[].
position(K,X,Res):-position(1,K,X,Res).
position(_,_,[],Res):-Res=[].
position(A,K,[M|N],Res):- M==K, A1 is A+1,position(A1,K,N,Ress),Res=[A|Ress].
position(A,K,[M|N],Res):- M\==K,A1 is A+1,position(A1,K,N,Res).
