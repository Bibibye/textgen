:-['lexique.pl'].

% phrase
s(s(T1,T2),Enchassement,D) --> np(T1,N,P,_,D), vp(T2,N,P,Enchassement).

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
vp(vp(T1,T2),N,P,Enchassement) --> v(T1,N,P,vcomp), vcomp(T2,Enchassement).
% vp(N,P) --> v(N,P), np(_,_,comp), pp.
% vp(N,P) --> v(N,P), pp, comp.

% infinitif
vcomp(vcomp(T),_) --> vinf(T,n0).
vcomp(vcomp(T1,T2),_) --> vinf(T1,n1), np(T2,_,_,comp,_).
vcomp(vcomp(T1,T2),1) --> vinf(T1,comp), comp(T2,0).
vcomp(vcomp(T1,T2),1) --> vinf(T1,vcomp), vcomp(T2,0).
% vcomp --> vinf, np(_,_,comp), pp.
% vcomp --> vinf, pp, comp.

% subordonnee completive
comp(comp(T1,T2),Enchassement) --> cs(T1,F), s(T2,Enchassement,F).

% groupe prepositionnel
pp(pp(T1,T2)) --> prep(T1,F), np(T2,_,_,comp,F).

% terminaux
v(v(Mot),N,P,V) --> [Mot], {est(Mot, v),
			    accord(Mot, N, _, P),
			    valence(Mot, V)}.

vinf(vinf(Mot),V) --> [Mot], {est(Mot, vinf),
			      valence(Mot, V)}.

cs(cs(Mot),F) --> [Mot], {est(Mot, cs),
			  forme(Mot, F)}.

prep(prep(Mot),F) --> [Mot], {est(Mot, prep),
			      forme(Mot, F)}.

adj(adj(Mot),N,G,P,D) --> [Mot], {est(Mot, adj),
				  accord(Mot, N, G, _),
				  position(Mot, P),
				  debut(Mot, D)}.

nc(nc(Mot),N,G,D) --> [Mot], {est(Mot, nc),
			      accord(Mot, N, G, _),
			      debut(Mot, D)}.

prn(prn(Mot),N,P,D) --> [Mot], {est(Mot, prn),
				accord(Mot, N, _, P),
				debut(Mot, D)}.

det(det(Mot),N,G,D,F) --> [Mot], {est(Mot, det),
				  accord(Mot, N, G, _),
				  debut(Mot, D),
				  forme(Mot, F)}.
