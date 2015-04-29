% v vinf cs prep adj nc prn det
est(W,X) :- lex(W,X,_,_,_,_,_,_,_).

% sing plur
nombre(W,X) :- lex(W,_,X,_,_,_,_,_,_).

% masc fem
genre(W,X) :- lex(W,_,_,X,_,_,_,_,_).

% 1 2 3
personne(W,X) :- lex(W,_,_,_,X,_,_,_,_).

%%
accord(W,N,G,P) :- lex(W,_,N,G,P,_,_,_,_).

% n0 n1 aN1 deN1 comp vcomp aN1comp
valence(W,V) :- lex(W,_,_,_,_,V,_,_,_).

% pre post both
position(W,P) :- lex(W,_,_,_,_,_,P,_,_).

% voy con
debut(W,L) :- lex(W,_,_,_,_,_,_,L,_).

% con voy
forme(W,F) :- lex(W,_,_,_,_,_,_,_,F).

% lex(mot,nature,nombre,genre,personne,valence,position,debut,forme)
lex('le',det,sing,masc,_,_,_,con,con).
lex('un',det,sing,masc,_,_,_,voy,con).
% lex('les',det,plur,_,_,_,_,con,con).
% lex('des',det,plur,_,_,_,_,con,con).
lex('la',det,sing,fem,_,_,_,con,con).
lex('une',det,sing,fem,_,_,_,voy,con).
lex('l',det,sing,_,_,_,_,con,voy).

% lex('porte',nc,sing,fem,_,_,_,con,con).
% lex('portes',nc,plur,fem,_,_,_,con,con).

lex('gnou',nc,sing,masc,_,_,_,con,con).
lex('gnous',nc,plur,masc,_,_,_,con,con).
lex('maroufle',nc,sing,fem,_,_,_,con,con).
lex('maroufles',nc,plur,fem,_,_,_,con,con).

lex('mange',v,sing,_,1,n1,_,con,con).
lex('manges',v,sing,_,2,n1,_,con,con).
lex('mange',v,sing,_,3,n1,_,con,con).
lex('mangeons',v,plur,_,1,n1,_,con,con).
lex('mangez',v,plur,_,2,n1,_,con,con).
lex('mangent',v,plur,_,3,n1,_,con,con).

% lex('marche',v,sing,_,1,n0,_,con,con).
% lex('marches',v,sing,_,2,n0,_,con,con).
% lex('marche',v,sing,_,3,n0,_,con,con).
% lex('marchons',v,plur,_,1,n0,_,con,con).
% lex('marchez',v,plur,_,2,n0,_,con,con).
% lex('marchent',v,plur,_,3,n0,_,con,con).

% lex('semble',v,sing,_,1,vcomp,_,con,con).
% lex('sembles',v,sing,_,2,vcomp,_,con,con).
% lex('semble',v,sing,_,3,vcomp,_,con,con).
% lex('semblons',v,plur,_,1,vcomp,_,con,con).
% lex('semblez',v,plur,_,2,vcomp,_,con,con).
% lex('semblent',v,plur,_,3,vcomp,_,con,con).

lex('entends',v,sing,_,1,vcomp,_,voy,con).
lex('entends',v,sing,_,2,vcomp,_,voy,con).
lex('entend',v,sing,_,3,vcomp,_,voy,con).
lex('entendons',v,plur,_,1,vcomp,_,voy,con).
lex('entendez',v,plur,_,2,vcomp,_,voy,con).
lex('entendent',v,plur,_,3,vcomp,_,voy,con).


lex('dis',v,sing,_,1,comp,_,con,con).
lex('dis',v,sing,_,2,comp,_,con,con).
lex('dit',v,sing,_,3,comp,_,con,con).
lex('disons',v,plur,_,1,comp,_,con,con).
lex('dites',v,plur,_,2,comp,_,con,con).
lex('disent',v,plur,_,3,comp,_,con,con).

lex('manger',vinf,_,_,_,n1,_,con,con).
lex('marcher',vinf,_,_,_,n0,_,con,con).
lex('sembler',vinf,_,_,_,vcomp,_,con,con).
lex('dire',vinf,_,_,_,comp,_,con,con).

lex('que',cs,_,_,_,_,_,con,con).
lex('qu',cs,_,_,_,_,_,con,voy).

lex('de',prep,_,_,_,_,_,con,con).
lex('d',prep,_,_,_,_,_,con,voy).
lex('à',prep,_,_,_,_,_,con,con).

lex('rouge',adj,sing,_,_,_,post,con,con).
lex('rouges',adj,plur,_,_,_,post,con,con).

lex('grand',adj,sing,masc,_,_,pre,con,con).
lex('grande',adj,sing,fem,_,_,pre,con,con).
lex('grands',adj,plur,masc,_,_,pre,con,con).
lex('grandes',adj,plur,fem,_,_,pre,con,con).

lex('poilu',adj,sing,masc,_,_,post,con,con).
lex('poilus',adj,plur,masc,_,_,post,con,con).
lex('poilue',adj,sing,fem,_,_,post,con,con).
lex('poilues',adj,plur,fem,_,_,post,con,con).

lex('je',prn,sing,_,1,_,_,con,con).
lex('j',prn,sing,_,1,_,_,con,voy).
lex('tu',prn,sing,_,2,_,_,con,con).
lex('il',prn,sing,masc,3,_,_,voy,con).
lex('elle',prn,sing,fem,3,_,_,voy,con).
lex('on',prn,sing,masc,3,_,_,voy,con).
lex('nous',prn,plur,_,1,_,_,con,con).
lex('vous',prn,plur,_,2,_,_,con,con).
lex('ils',prn,plur,masc,3,_,_,voy,con).
lex('elles',prn,plur,fem,3,_,_,voy,con).
