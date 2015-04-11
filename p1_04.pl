/**
 * len(?L, +N)
 */

len([],0) :- !.
len([_|T],N) :-
    len(T,N2),
    N is N2 + 1.

:- begin_tests(len).
test('empty') :-
    len([],N),
    N == 0.
test('single') :-
    len([a],N),
    N == 1.
test('supplied length success') :-
    len([a,b,c],3).
test('supplied length fail', [fail]) :-
    len([a,b,c],4).
:- end_tests(len).
