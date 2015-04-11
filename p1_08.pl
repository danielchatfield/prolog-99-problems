/**
 * compress(+L,?X)
 *
 * Removes consecutive duplicates from a list of elements.
 * The cuts are green.
 */

compress([],[]) :- !.
compress([H],[H]) :- !.
compress([H,H|T],X) :-
    !,
    compress([H|T],X).
compress([H1,H2|T],[H1|X]) :-
    H1 \= H2,
    compress([H2|T],X).


:- begin_tests('compress/2').
test('empty list') :-
    compress([],X),
    X == [].
test('no dupes') :-
    compress([a,b,c,d,e],X),
    X == [a,b,c,d,e].
test('non consecutive dupes') :-
    compress([a,b,a,b],X),
    X == [a,b,a,b].
test('normal') :-
    compress([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X),
    X == [a,b,c,a,d,e].
:- end_tests('compress/2').
