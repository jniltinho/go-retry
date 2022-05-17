go-retry
========

A retry command by golang on CLI


Description
-----------

Retry n times with interval for your command until to zero for exit-status.

Usage
-----

```bash
retry -i 5s -c 2 /usr/lib64/nagios/plugins/check_http -w 10 -c 15 -H localhost
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
