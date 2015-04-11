/**
 * flatten(+L,?X)
 *
 * The cuts are green
 */

flatten(X,[X]) :- \+ is_list(X).
flatten([],[]).
flatten([H|T],X) :-
    flatten(H,H2),
    flatten(T,T2),
    append(H2,T2,X).

:- begin_tests('flatten/2').
test(flatten) :-
    flatten([a,[b,[c,d],e]],X),
    X == [a,b,c,d,e].
:- end_tests('flatten/2').
