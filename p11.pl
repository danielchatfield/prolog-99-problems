/*
* modified_encode(+L,?X)
*
* The cuts are green.
*/

modified_encode(L,X) :-
    modified_encode(L,X,1).
modified_encode([],[],_) :- !.
modified_encode([H],[X],Count) :- !,
    modified_encode_element(Count,H,X).
modified_encode([H,H|T],X,Count) :-
    !,
    NextCount is Count + 1,
    modified_encode([H|T],X, NextCount).
modified_encode([H1,H2|T],[XH|XT],Count) :-
    H1 \= H2,
    modified_encode_element(Count,H1,XH),
    modified_encode([H2|T],XT,1).

modified_encode_element(1,X,X):- !.
modified_encode_element(Count, X, [Count,X]) :-
    Count \= 1.


:- begin_tests('modified_encode/2').
test('normal usage') :-
    modified_encode([a,a,a,b,c,c,a,a,d,e,e,e],X),
    X == [[3,a],b,[2,c],[2,a],d,[3,e]].
:- end_tests('modified_encode/2').
