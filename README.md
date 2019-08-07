# Getting started

## Prerequisites

To use this configuration correctly, you need  programs :

- **[Hyper-v](https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v)**,
- **[Vagrant](https://www.vagrantup.com/)**,
- **[Vagrant ENV Plugin](https://github.com/gosuri/vagrant-env)**,
- **[Git](https://git-scm.com/)**

## Basic installation

```shell
vagrant up
```

## Installation using provider

```shell
vagrant up --provider hyperv
```

## Removing virtual machine

```shell
vagrant destroy -f
```

## Stoping virtual machine

```shell
vagrant halt
```

## Some useful informations

*warning* : You may need to enable samba folder sharing services if it wasn't enabled by default.

## Good luck and enjoy
