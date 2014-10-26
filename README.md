wol.c
=====

A simple [Wake-on-LAN](http://en.wikipedia.org/wiki/Wake-on-LAN) utility written in C.

## How to compile

```
$ make
```

## How to install

```
$ sudo make install
```
or as root :
```
# make install
```

### How to install in a custom location

By default, install binaries in _/usr/local/bin_ and manpage in _/usr/local/share/man_.
To change the default :

```
$ sudo make PREFIX=/usr/local install
```

## How to use

```
$ wol AA:BB:CC:DD:EE:FF
```

## For more informations

```
$ man wol
```
