if [ -n "$BASH_VERSION" ] && [ -n "$PS1" ]; then
	if [ "$USER" = "bitcoin" ]; then
		alias bitcoin-cli='bitcoin-cli -conf=/etc/bitcoin/bitcoin.conf'
	elif sudo -V >/dev/null 2>&1; then
		alias bitcoin-cli='sudo -u bitcoin bitcoin-cli -conf=/etc/bitcoin/bitcoin.conf'
	fi
fi