Script pour facilement renommer des fichiers depuis un export csv.

Le script `csvToScript.sh` est 'executable'. Sinon faire `chmod +x csvToScript.sh`

Cette commande va créé le script `export.sh` à partir du fichier `export.csv`. Le CSV doit être avec le séparateur `;` et **sans** délimiteur de test `'` ou `"`, commande dans le fichier exemple.


``` bash
./csvToScript.sh "export.csv" "export.sh"
```

Le fichier `export.sh` contient alors un `mv` (move) pour chaque ligne du fichier csv.

__Attention, si la deuxième colonne contient des doublons des fichiers seront écrasés__

``` bash
cp export.sh repertoire_contenant_mes_fichiers/
cd repertoire_contenant_mes_fichiers/
./export.sh
```

1. Je copie (cp -> copy) mon script là ou se trouve mes fichiers à renommer
2. Je me déplace (cd -> change directory) dans le dossier
3. Je lance le script.
