# textgen
---------
Un générateur de phrases simples en français.

- Le fichier `lex.pl` contient le lexique ainsi qu'un certain nombre de prédicats permettant d'obtenir facilement des propriétés des mots du lexique.
- Le fichier `grammar.pl` contient une grammaire simplifiée du français.
- Le fichier `main.pl` est destiné à être exécuté et affiche l'ensemble des phrases engendrées par la grammaire. Le lexique doit rester assez petit pour ne pas casser la pile Prolog à cause de l'explosion combinatoire (d'où une certaine partie du lexique commentée).

Pour lancer le générateur, il faut avoir installé `swipl`. Ensuite :

```
./main.pl
```
