% v vinf cs prep adj nc prn det
est(Mot,Nature) :- lex(Mot,Nature,_,_,_,_,_,_,_).

% sing plur
nombre(Mot,Nombre) :- lex(Mot,_,Nombre,_,_,_,_,_,_).

% masc fem
genre(Mot,Genre) :- lex(Mot,_,_,Genre,_,_,_,_,_).

% 1 2 3
personne(Mot,Personne) :- lex(Mot,_,_,_,Personne,_,_,_,_).

%%
accord(Mot,Nombre,Genre,Personne) :- lex(Mot,_,Nombre,Genre,Personne,_,_,_,_).

% n0 n1 aN1 deN1 comp vcomp aN1comp
valence(Mot,Valence) :- lex(Mot,_,_,_,_,Valence,_,_,_).

% pre post both
position(Mot,Position) :- lex(Mot,_,_,_,_,_,Position,_,_).

% voy con
debut(Mot,Debut) :- lex(Mot,_,_,_,_,_,_,Debut,_).

% con voy
forme(Mot,Forme) :- lex(Mot,_,_,_,_,_,_,_,Forme).

% lex(mot,nature,nombre,genre,personne,valence,position,debut,forme)


				% déterminants %

lex('le',det,sing,masc,_,_,_,con,con).
lex('un',det,sing,masc,_,_,_,voy,_).
lex('la',det,sing,fem,_,_,_,con,con).
lex('une',det,sing,fem,_,_,_,voy,_).
lex('l',det,sing,_,_,_,_,con,voy).
% lex('les',det,plur,_,_,_,_,con,_).
% lex('des',det,plur,_,_,_,_,con,_).


				% noms communs %

% lex('porte',nc,sing,fem,_,_,_,con,_).
lex('gnou',nc,sing,masc,_,_,_,con,_).
lex('maroufle',nc,sing,fem,_,_,_,con,_).
% lex('gnous',nc,plur,masc,_,_,_,con,_).
% lex('maroufles',nc,plur,fem,_,_,_,con,_).
% lex('portes',nc,plur,fem,_,_,_,con,_).


				% verbes conjugués %

lex('mange',v,sing,_,1,n1,_,con,_).
lex('manges',v,sing,_,2,n1,_,con,_).
lex('mange',v,sing,_,3,n1,_,con,_).
% lex('mangeons',v,plur,_,1,n1,_,con,_).
% lex('mangez',v,plur,_,2,n1,_,con,_).
% lex('mangent',v,plur,_,3,n1,_,con,_).

lex('marche',v,sing,_,1,n0,_,con,_).
lex('marches',v,sing,_,2,n0,_,con,_).
lex('marche',v,sing,_,3,n0,_,con,_).
% lex('marchons',v,plur,_,1,n0,_,con,_).
% lex('marchez',v,plur,_,2,n0,_,con,_).
% lex('marchent',v,plur,_,3,n0,_,con,_).

% lex('semble',v,sing,_,1,vcomp,_,con,_).
% lex('sembles',v,sing,_,2,vcomp,_,con,_).
% lex('semble',v,sing,_,3,vcomp,_,con,_).
% lex('semblons',v,plur,_,1,vcomp,_,con,_).
% lex('semblez',v,plur,_,2,vcomp,_,con,_).
% lex('semblent',v,plur,_,3,vcomp,_,con,_).

lex('entends',v,sing,_,1,vcomp,_,voy,_).
lex('entends',v,sing,_,2,vcomp,_,voy,_).
lex('entend',v,sing,_,3,vcomp,_,voy,_).
% lex('entendons',v,plur,_,1,vcomp,_,voy,_).
% lex('entendez',v,plur,_,2,vcomp,_,voy,_).
% lex('entendent',v,plur,_,3,vcomp,_,voy,_).

lex('dis',v,sing,_,1,comp,_,con,_).
lex('dis',v,sing,_,2,comp,_,con,_).
lex('dit',v,sing,_,3,comp,_,con,_).
% lex('disons',v,plur,_,1,comp,_,con,_).
% lex('dites',v,plur,_,2,comp,_,con,_).
% lex('disent',v,plur,_,3,comp,_,con,_).


				% verbes infinitif %

lex('manger',vinf,_,_,_,n1,_,con,_).
lex('marcher',vinf,_,_,_,n0,_,con,_).
% lex('sembler',vinf,_,_,_,vcomp,_,con,_).
lex('dire',vinf,_,_,_,comp,_,con,_).


				% conjonctions de subordination %

lex('que',cs,_,_,_,_,_,con,con).
lex('qu',cs,_,_,_,_,_,con,voy).


				% prépositions %

% lex('de',prep,_,_,_,_,_,con,con).
% lex('d',prep,_,_,_,_,_,con,voy).
% lex('à',prep,_,_,_,_,_,con,_).


				% conjonctions de coordination %

% lex('mais',cc,_,_,_,_,_,con,_).
% lex('ou',cc,_,_,_,_,_,con,_).
% lex('et',cc,_,_,_,_,_,con,_).
% lex('donc',cc,_,_,_,_,_,con,_).
% lex('or',cc,_,_,_,_,_,con,_).
% lex('car',cc,_,_,_,_,_,con,_).
% lex('tandis que',cc,_,_,_,_,_,con,con).
% lex('tandis qu',cc,_,_,_,_,_,con,voy).


				% adjectifs qualificatifs %

lex('rouge',adj,sing,_,_,_,post,con,_).
% lex('rouges',adj,plur,_,_,_,post,con,_).

lex('grand',adj,sing,masc,_,_,pre,con,_).
lex('grande',adj,sing,fem,_,_,pre,con,_).
% lex('grands',adj,plur,masc,_,_,pre,con,_).
% lex('grandes',adj,plur,fem,_,_,pre,con,_).

lex('poilu',adj,sing,masc,_,_,post,con,_).
lex('poilue',adj,sing,fem,_,_,post,con,_).
% lex('poilus',adj,plur,masc,_,_,post,con,_).
% lex('poilues',adj,plur,fem,_,_,post,con,_).


				% pronoms personnels sujets %

lex('je',prn,sing,_,1,_,_,con,con).
lex('j',prn,sing,_,1,_,_,con,voy).
lex('tu',prn,sing,_,2,_,_,con,_).
lex('il',prn,sing,masc,3,_,_,voy,_).
% lex('elle',prn,sing,fem,3,_,_,voy,_).
% lex('on',prn,sing,masc,3,_,_,voy,_).
% lex('nous',prn,plur,_,1,_,_,con,_).
% lex('vous',prn,plur,_,2,_,_,con,_).
% lex('ils',prn,plur,masc,3,_,_,voy,_).
% lex('elles',prn,plur,fem,3,_,_,voy,_).
