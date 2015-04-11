/**
 * is_palindrome(+L)
 */

:- ensure_loaded(p1_05).

is_palindrome(L) :- reverse(L,L).

:- begin_tests('is_palindrome/1').
test('empty') :-
    is_palindrome([]).
test('simple') :-
    is_palindrome([a,b,c,b,a]).
test('simple fail', [fail]) :-
    is_palindrome([a,b,c,d,a]).
:- end_tests('is_palindrome/1').
