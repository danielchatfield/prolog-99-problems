/*
* decode(+L,?X)
*
* Decodes a length encoded list
*
* The cuts are green.
*/


decode([],[]) :- !.
decode([[1,X]|T1], [X|T2]) :-
  decode(T1, T2),
  !.
decode([[I,X]|T1], [X|T2]) :-
  I > 1,
  Inext is I - 1,
  decode([[Inext, X]|T1], T2).



:- begin_tests('decode/2').
test('normal usage') :-
    decode([[3,a],[1,b],[2,c],[2,a],[1,d],[3,e]],X),
    X == [a,a,a,b,c,c,a,a,d,e,e,e].
:- end_tests('decode/2').
