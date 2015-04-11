/*
 * pack(+L,?X)
 *
 * Packs consecutive duplicates of list elements into sublists.
 *
 * The cuts are green.
 */

pack(L,X) :-
    pack(L,X,1).
pack([],[],_) :- !.
pack([H],[X],Count) :-
    !,
    pack_list(Count,H,X).
pack([H,H|T],X,Count) :-
    !,
    NextCount is Count + 1,
    pack([H|T],X, NextCount).
pack([H1,H2|T],[XH|XT],Count) :-
    H1 \= H2,
    pack_list(Count, H1, XH),
    pack([H2|T],XT,1).


pack_list(0,_,[]) :- !.
pack_list(Length, Fill, [Fill|Tail]) :-
    Length > 0,
    NextLength is Length - 1,
    pack_list(NextLength, Fill, Tail).


:- begin_tests('pack/2').
test('normal usage') :-
    pack([a,a,a,b,c,c,a,a,d,e,e,e],X),
    X == [[a,a,a],[b],[c,c],[a,a],[d],[e,e,e]].
:- end_tests('pack/2').
