/*
* encode(+L,?X)
*
* The cuts are green.
*/

encode(L,X) :-
    encode(L,X,1).
encode([],[],_) :- !.
encode([H],[[Count,H]],Count) :- !.
encode([H,H|T],X,Count) :-
    !,
    NextCount is Count + 1,
    encode([H|T],X, NextCount).
encode([H1,H2|T],[[Count,H1]|XT],Count) :-
    H1 \= H2,
    encode([H2|T],XT,1).


:- begin_tests('encode/2').
test('normal usage') :-
    encode([a,a,a,b,c,c,a,a,d,e,e,e],X),
    X == [[3,a],[1,b],[2,c],[2,a],[1,d],[3,e]].
:- end_tests('encode/2').
