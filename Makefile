PREFIX=/usr/local

install:
	@find bin \
		 -type f \
		 -exec install \
			-v \
			-o root \
			-g wheel \
			-m "u=rwx,go=rx" \
			"{}" "$(PREFIX)"/"{}" \;

	@find libexec/certbot+cron \
		-type d \
		-exec install \
			-v \
			-d \
			-o root \
			-g wheel \
			-m "u=rwx,go=rx" \
			"$(PREFIX)"/"{}" \;
	@find libexec/certbot+cron \
		-type f \
		-exec install \
		      -v \
		      -o root \
		      -g wheel \
		      -m "u=rwx,go=rx" \
		      "{}" "$(PREFIX)"/"{}" \;

	@find share/certbot+cron \
		-type d \
		-exec install \
		      -v \
		      -d \
		      -o root \
		      -g wheel \
		      -m "u=rwx,go=rx" \
		      "$(PREFIX)"/"{}" \;
	@find share/certbot+cron \
		-type f \
		-exec install \
		      -v \
		      -o root \
		      -g wheel \
		      -m "u=rw,go=r" \
		      "{}" "$(PREFIX)"/"{}" \;

deinstall:
	rm -rf "$(PREFIX)"/bin/setup-certbot+cron
	rm -rf "$(PREFIX)"/libexec/certbot+cron
	rm -rf "$(PREFIX)"/share/certbot+cron
	rm -rf /home/_certbot
	crontab -u _certbot -rf || true
	pw userdel -n _certbot || true
	pw groupdel -n _certbot || true
