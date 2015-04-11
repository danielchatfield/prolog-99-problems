/**
* last_but_one(+L, ?X)
*/

last_but_one([X,_], X) :- !.
last_but_one([_|XS], X) :- last_but_one(XS, X).

:- begin_tests(last_but_one).
test('empty list', [fail]) :-
    last_but_one([], _).
test('single list', [fail]) :-
    last_but_one([a], _).
test('simple list') :-
    last_but_one([a,b,c], X),
    X == b.
test('instantiated failure', [fail]) :-
    last_but_one([a,b,c], a).
test('instantiated success') :-
    last_but_one([a,b,c], b).
:- end_tests(last_but_one).
