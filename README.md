# Installation du module

```
$ mkdir ntp
$ cd ntp
$ git clone https://github.com/sipf-infrastructure/ntp.git

```

# Utilisation

Dans le fichier '/etc/puppet/manifests/site.pp', on définit ce qui suit :
```
node test {
	class { 'ntp': }

  # ou

	class { 'ntp':
		server	=> enable,
	}

}
```
