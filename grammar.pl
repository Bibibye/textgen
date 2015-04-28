:-['lex.pl'].

% phrase
s(s(T1,T2),Flag,D) --> np(T1,N,P,_,D), vp(T2,N,P,Flag).

% syntagme nominal
np(np(T),N,P,suj,D) --> prn(T,N,P,D).
np(np(T1,T2),N,3,comp,D) --> det(T1,N,G,D,F), n(T2,N,G,F).
n(n(T),N,G,D) --> nc(T,N,G,D).

% syntagme nominal complexe
n(n(T1,T2),N,G,D) --> adj(T1,N,G,pre,D), nc(T2,N,G,_).
n(n(T1,T2),N,G,D) --> nc(T1,N,G,D), adj(T2,N,G,post,_).
n(n(T1,T2,T3),N,G,D) --> adj(T1,N,G,pre,D), nc(T2,N,G,_), adj(T3,N,G,post,_).
%n(N,G) --> nc(N,G), pp.

% syntagme verbal
vp(vp(T),N,P,_) --> v(T,N,P,n0).
vp(vp(T1,T2),N,P,_) --> v(T1,N,P,n1), np(T2,_,_,comp,_).
vp(vp(T1,T2),N,P,1) --> v(T1,N,P,comp), comp(T2,0).
vp(vp(T1,T2),N,P,Flag) --> v(T1,N,P,vcomp), vcomp(T2,Flag).
% vp(N,P) --> v(N,P), np(_,_,comp), pp.
%vp(N,P) --> v(N,P), pp, comp.

% infinitif
vcomp(vcomp(T),_) --> vinf(T,n0).
vcomp(vcomp(T1,T2),_) --> vinf(T1,n1), np(T2,_,_,comp,_).
vcomp(vcomp(T1,T2),1) --> vinf(T1,comp), comp(T2,0).
vcomp(vcomp(T1,T2),1) --> vinf(T1,vcomp), vcomp(T2,0).
%vcomp --> vinf, np(_,_,comp), pp.
%vcomp --> vinf, pp, comp.


% subordonnee completive
comp(comp(T1,T2),Flag) --> cs(T1,F), s(T2,Flag,F).

% groupe prepositionnel
pp(pp(T1,T2)) --> prep(T1,F), np(T2,_,_,comp,F).

% terminaux
v(v(Word),N,P,V) --> [Word], {isa(Word, v),
			      accord(Word, N, _, P),
			      valence(Word, V)}.

vinf(vinf(Word),V) --> [Word], {isa(Word, vinf),
				valence(Word, V)}.

cs(cs(Word),F) --> [Word], {isa(Word, cs),
			    forme(Word, F)}.

prep(prep(Word),F) --> [Word], {isa(Word, prep),
				forme(Word, F)}.

adj(adj(Word),N,G,P,D) --> [Word], {isa(Word, adj),
				    accord(Word, N, G, _),
				    position(Word, P),
				    debut(Word, D)}.

nc(nc(Word),N,G,D) --> [Word], {isa(Word, nc),
				accord(Word, N, G, _),
				debut(Word, D)}.

prn(prn(Word),N,P,D) --> [Word], {isa(Word, prn),
				  accord(Word, N, _, P),
				  debut(Word, D)}.

det(det(Word),N,G,D,F) --> [Word], {isa(Word, det),
				    accord(Word, N, G, _),
				    debut(Word, D),
				    forme(Word, F)}.
