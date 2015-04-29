#!/usr/bin/swipl -s
:- set_prolog_flag(verbose, silent).
:- initialization(main).

:-['grammaire.pl'].

afficher_liste([]).
afficher_liste([H|T]):-
	print(H),
	print(' '),
	afficher_liste(T).

afficher_liste2([]).
afficher_liste2([H|T]):-
	afficher_liste(H),
	nl,
	afficher_liste2(T).

main:-
	setof(S, T^s(T, 1, 1, _, S, []), L),
	afficher_liste2(L),
	halt.
