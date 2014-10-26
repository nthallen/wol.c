wol.c
=====

A simple [Wake-on-LAN](https://en.wikipedia.org/wiki/Wake-on-LAN) utility written in C.

## Installation

```
$ make
# make install
```

By default, this installs the binary in _/usr/local/bin_ and documenation in _/usr/local/share/man_.
To change this, use:

```
# make PREFIX=/usr/local install
```

## Example Usage

```
$ wol AA:BB:CC:DD:EE:FF
```

## Documentation

    $ man wol
