#!/usr/bin/swipl -s -L128m -G128m
:- set_prolog_flag(verbose, silent).
:- initialization(main).

:-['grammar.pl'].

print_list([]).
print_list([H|T]):-print(H), print(' '), print_list(T).

print_list2([]).
print_list2([H|T]):-print_list(H), nl, print_list2(T).

main:-
	setof(S, T^s(T, 1, S, []), L),
	print_list2(L),
	halt.
