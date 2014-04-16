## Utilisation du module

* Ce module utilise les "hiera", veuillez créer un répertoire "enable" dans le dossier hieradata.
* Dans ce nouveau répertoire veuillez créer un fichier portant le nom suivant : srv1.dev.yaml
* Ce fichier doit contenir ce qui suit :

```
---
ntp::server : 'enable'
```
Remarque : si vous utilisez ce module sur un serveur "client", la variable ntp::server doit être mis à "disabled".
