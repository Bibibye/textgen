% v vinf cs prep adj nc prn det
isa(W, X) :- lex(W,X,_,_,_,_,_).

% sing plur
nombre(W, X) :- lex(W,_,X,_,_,_,_).

% masc fem
genre(W,X) :- lex(W,_,_,X,_,_,_).

% 1 2 3
person(W,X) :- lex(W,_,_,_,X,_,_).

%%
accord(W,N,G,P) :- lex(W,_, N, G, P,_,_).

% n0 n1 aN1 deN1 comp vcomp aN1comp
valence(W,V) :- lex(W,_,_,_,_,V,_).

% pre post both
position(W,P) :- lex(W,_,_,_,_,_,P).

% lex(mot, nature, nombre, genre, personne, valence, position)
lex('le', det, sing, masc, _,_,_).
lex('un', det, sing, masc, _,_,_).
lex('les', det, plur, _, _,_,_).
lex('des', det, plur, _, _,_,_).
lex('la', det, sing, fem, _,_,_).
lex('une', det, sing, fem, _,_,_).

lex('porte', nc, sing, fem, _,_,_).
lex('portes', nc, plur, fem, _,_,_).

lex('gnou', nc, sing, masc, _,_,_).
lex('gnous', nc, plur, masc, _,_,_).
lex('maroufle', nc, sing, fem, _,_,_).
lex('maroufles', nc, plur, fem, _,_,_).

lex('mange', v, sing, _, 1, n1,_).
lex('manges', v, sing, _,2, n1,_).
lex('mange', v, sing, _, 3, n1,_).
lex('mangeons', v, plur, _, 1, n1,_).
lex('mangez', v, plur, _, 2, n1,_).
lex('mangent', v, plur, _, 3, n1,_).

lex('marche', v, sing, _, 1, n0,_).
lex('marches', v, sing, _,2, n0,_).
lex('marche', v, sing, _, 3, n0,_).
lex('marchons', v, plur, _, 1, n0,_).
lex('marchez', v, plur, _, 2, n0,_).
lex('marchent', v, plur, _, 3, n0,_).

lex('semble', v, sing, _, 1, vcomp,_).
lex('sembles', v, sing, _,2, vcomp,_).
lex('semble', v, sing, _, 3, vcomp,_).
lex('semblons', v, plur, _, 1, vcomp,_).
lex('semblez', v, plur, _, 2, vcomp,_).
lex('semblent', v, plur, _, 3, vcomp,_).

lex('dis', v, sing, _, 1, comp,_).
lex('dis', v, sing, _,2, comp,_).
lex('dit', v, sing, _, 3, comp,_).
lex('disons', v, plur, _, 1, comp,_).
lex('dites', v, plur, _, 2, comp,_).
lex('disent', v, plur, _, 3, comp,_).

lex('manger', vinf,_,_,_,n1,_).
lex('marcher', vinf,_,_,_,n0,_).
lex('sembler', vinf,_,_,_,vcomp,_).
lex('dire', vinf, _,_,_,comp,_).

lex('que', cs,_,_,_,_,_).

lex('de', prep,_,_,_,_,_).
lex('à', prep,_,_,_,_,_).

lex('rouge', adj, sing,_,_,_,post).
lex('rouges', adj, plur,_,_,_,post).

lex('grand', adj, sing, masc,_,_,pre).
lex('grande', adj, sing, fem,_,_,pre).
lex('grands', adj, plur, masc,_,_,pre).
lex('grandes', adj, plur, fem,_,_,pre).

lex('poilu', adj, sing, masc, _,_,post).
lex('poilus', adj, plur, masc, _,_,post).
lex('poilue', adj, sing, fem, _,_,post).
lex('poilues', adj, plur, fem, _,_,post).

lex('je', prn, sing, _, 1,_,_).
lex('tu', prn, sing, _, 2,_,_).
lex('il', prn, sing, masc, 3,_,_).
lex('elle', prn, sing, fem, 3,_,_).
lex('on', prn, sing, masc, 3,_,_).
lex('nous', prn, plur, _, 1,_,_).
lex('vous', prn, plur, _, 2,_,_).
lex('ils', prn, plur, masc, 3,_,_).
lex('elles', prn, plur, fem, 3,_,_).