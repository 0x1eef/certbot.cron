## About

certbot+cron renews
[letsencrypt.org](https://letsencrypt.org)
certificates at regular intervals via
py-certbot and
[cron(8)](https://man.freebsd.org/cgi/man.cgi?cron(8)).

## Requirements

**Platform requirements**

* [FreeBSD (operating system)](https://www.freebsd.org)
* [namecheap (DNS provider)](https://namecheap.com)

**Runtime requirements**

* security/py-certbot
* ftp/curl

## Install

**Clone**

    user@localhost$ git clone https://github.com/0x1eef/certbot.cron
    user@localhost$ cd certbot.cron

**Install**

    root@localhost# make install
    root@localhost# setup-certbot+cron

## Sources

* [GitHub](https://github.com/0x1eef/certbot.cron)
* [GitLab](https://gitlab.com/0x1eef/certbot.cron)

## License

[BSD Zero Clause](https://choosealicense.com/licenses/0bsd/)
<br>
See [LICENSE](./LICENSE)

