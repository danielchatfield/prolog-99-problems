/**
 * my_last(?X, +L)
 */

my_last(X,[X]) :- !.
my_last(X,[_|XS]) :- my_last(X, XS).

:- begin_tests(my_last).
test('empty list') :-
    \+my_last(_,[]).
test('simple list') :-
    my_last(X, [a,b,c]),
    X == c.
test('instantiated failure', [fail]) :-
    my_last(a, [a,b,c]).
test('instantiated success') :-
    my_last(c, [a,b,c]).
:- end_tests(my_last).
