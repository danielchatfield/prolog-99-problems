/**
 * last(+L, ?X)
 */

last([X], X) :- !.
last([_|XS], X) :- last(XS, X).

:- begin_tests(last).
test('empty list', [fail]) :-
    last([],_).
test('simple list') :-
    last([a,b,c], X),
    X == c.
test('instantiated failure', [fail]) :-
    last([a,b,c], a).
test('instantiated success') :-
    last([a,b,c], c).
:- end_tests(last).
