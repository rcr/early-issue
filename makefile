##  makefile for early-issue

all: early-issue.hook early-issue.install early-issue.txt

install: early-issue.hook early-issue.install early-issue.txt
	install -D -m 644 "early-issue.hook" \
		"/usr/lib/initcpio/hooks/early-issue"
	install -D -m 644 "early-issue.install" \
		"/usr/lib/initcpio/install/early-issue"
	install -D -m 644 "early-issue.txt" \
		"/etc/early-issue"

uninstall:
	rm -f "/usr/lib/initcpio/hooks/early-issue"
	rm -f "/usr/lib/initcpio/install/early-issue"
	rm -f "/etc/early-issue"

