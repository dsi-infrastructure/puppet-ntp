# Ntp [![Build Status](https://travis-ci.org/sipf-infrastructure/ntp.png?branch=master)](https://travis-ci.org/sipf-infrastructure/ntp)

## Installation du module

Dans le répertoire '/etc/puppet/modules', lancez les commandes suivantes :
```bash
$ mkdir ntp
$ cd ntp
$ git clone https://github.com/sipf-infrastructure/ntp.git .
```

## Utilisation

Dans le fichier '/etc/puppet/manifests/site.pp', on définit ce qui suit :
```ruby
node default {
  class { 'ntp':
    server    => 'ntp.example.com',
  }
}
```
La configuration en mode 'master' est appliqué si le nom du serveur spécifié (le paramètre **server**) correspond au nom de la machine sur lequel ce module est exécuté.

## A faire

- Prendre en compte la possibilité d'ajouter N serveurs centraux supplémentaires.
