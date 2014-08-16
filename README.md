vagrant-dev2
=====

Create local development machine based on [Scientific Linux 6 64 minimal](http://www.vagrantbox.es/)

# Requiements

* [Oracle VM VirtualBox](https://www.virtualbox.org/)
* [Chef Development Kit | Chef](http://downloads.getchef.com/chef-dk/windows/#/)

# How to use

```bash
$ make vagrant_setup
$ vagrant up
$ vagrant ssh-config --host dev >> ~/.ssh/config
$ ssh dev
```
