go-retry
========

A retry command by golang on CLI


Description
-----------

Retry n times with interval for your command until to zero for exit-status.

Usage
-----

```bash
retry -i=5s -c=2 ping -c5 www.google.com
retry -i=10s -c=3 false
```

Install
-------

To install, use `go get`:

```bash
go get -d github.com/jniltinho/go-retry
```

Contribution
------------

1. Fork ([https://github.com/jniltinho/go-retry](https://github.com/jniltinho/go-retry))
1. Create a feature branch
1. Commit your changes


Author
------

[jniltinho](https://github.com/jniltinho)
