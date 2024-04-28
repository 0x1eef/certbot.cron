## About

certbot + cron configures py39-certbot to renew
[letsencrypt.org](https://letsencrypt.org)
HTTPS certificates at regular intervals via
[cron(8)](https://man.freebsd.org/cgi/man.cgi?cron(8)).
The renew process is based on the "manual" certbot
plugin and a DNS-based challenge. The domain is
assumed to be leased from
[namecheap](https://namecheap.com),
and the platform is assumed to be FreeBSD-based.

## Install

    # Clone repository
    $ git clone https://github.com/0x1eef/certbot.cron
    $ cd certbot.cron
    # doas -u root -- make install
    # doas -u root -- setup-certbot+cron

## Sources

* [GitHub](https://github.com/0x1eef/certbot.cron)
* [GitLab](https://gitlab.com/0x1eef/certbot.cron)

## License

[BSD Zero Clause](https://choosealicense.com/licenses/0bsd/).
<br>
See [LICENSE](./LICENSE).

