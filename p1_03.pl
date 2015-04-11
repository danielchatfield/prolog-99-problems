/**
 * element_at(+N, +L, ?X)
 */

element_at(0,[X|_],X) :- !.
element_at(N,[_|XS],X) :-
    N > 0,
    N2 is N - 1,
    element_at(N2, XS, X).

:- begin_tests(element_at).
test('first element') :-
    element_at(0,[a,b,c],X),
    X == a.
test('last element') :-
    element_at(2,[a,b,c],X),
    X == c.
test('out of bounds', [fail]) :-
    element_at(3,[a,b,c],_).
test('instantiated variable') :-
    element_at(2,[a,b,c],c).
:- end_tests(element_at).
