/**
 * reverse(?A, +B)
 * reverse(+A, ?B)
 *
 * reverse/2 is true iff the list B is the list A reversed.
 *
 * The cut is a green cut.
 */

 reverse(A,B) :- reverse_(A,B,[]).
 reverse_([],B,B).
 reverse_([AH|AT],B,Tmp) :- reverse_(AT,B,[AH|Tmp]).

 :- begin_tests('reverse/2').
 test('reverse single') :-
     reverse([a],X),
     X == [a].
test('reverse several') :-
    reverse([a,b,c],X),
    X == [c,b,a].
test('reverse diff len fail', [fail]) :-
    reverse([a,b],[a,b,c]).
:- end_tests('reverse/2').
