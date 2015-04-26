:-['lex.pl'].

% phrase
s(s(T1,T2),Flag) --> np(T1,N,P,_), vp(T2,N,P,Flag).

% syntagme nominal
np(np(T),N,P,suj) --> prn(T,N,P).
np(np(T1,T2),N,3,comp) --> det(T1,N,G), n(T2,N,G).
n(n(T),N,G) --> nc(T,N,G).

% syntagme nominal complexe
n(n(T1,T2),N,G) --> adj(T1,N,G,pre), nc(T2,N,G).
n(n(T1,T2),N,G) --> nc(T1,N,G), adj(T2,N,G,post).
n(n(T1,T2,T3),N,G) --> adj(T1,N,G,pre), nc(T2,N,G), adj(T3,N,G,post).
%n(N,G) --> nc(N,G), pp.

% syntagme verbal
vp(vp(T),N,P,_) --> v(T,N,P,n0).
vp(vp(T1,T2),N,P,_) --> v(T1,N,P,n1), np(T2,_,_,comp).
vp(vp(T1,T2),N,P,1) --> v(T1,N,P,comp), comp(T2,0).
vp(vp(T1,T2),N,P,Flag) --> v(T1,N,P,vcomp), vcomp(T2,Flag).
% vp(N,P) --> v(N,P), np(_,_,comp), pp.
%vp(N,P) --> v(N,P), pp, comp.

% infinitif
vcomp(vcomp(T),_) --> vinf(T,n0).
vcomp(vcomp(T1,T2),_) --> vinf(T1,n1), np(T2,_,_,comp).
vcomp(vcomp(T1,T2),1) --> vinf(T1,comp), comp(T2,0).
vcomp(vcomp(T1,T2),1) --> vinf(T1,vcomp), vcomp(T2,0).
%vcomp --> vinf, np(_,_,comp), pp.
%vcomp --> vinf, pp, comp.


% subordonnee completive
comp(comp(T1,T2), Flag) --> cs(T1), s(T2,Flag).

% groupe prepositionnel
pp(pp(T1,T2)) --> prep(T1), np(T2,_,_,comp).

% terminaux
v(v(Word),N,P,V) --> [Word], {isa(Word, v),
			      accord(Word, N, _, P),
			      valence(Word, V)}.

vinf(vinf(Word),V) --> [Word], {isa(Word, vinf),
				valence(Word, V)}.

cs(cs(Word)) --> [Word], {isa(Word, cs)}.

prep(prep(Word)) --> [Word], {isa(Word, prep)}.

adj(adj(Word),N,G,P) --> [Word], {isa(Word, adj),
				  accord(Word, N, G, _),
				  position(Word, P)}.

nc(nc(Word),N,G) --> [Word], {isa(Word, nc),
			      accord(Word, N, G, _)}.

prn(prn(Word),N,P) --> [Word], {isa(Word, prn),
				accord(Word, N, _, P)}.

det(det(Word),N,G) --> [Word], {isa(Word, det),
				accord(Word, N, G, _)}.
