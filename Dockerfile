FROM alpine

RUN mkdir /lib64 \
	&& ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2 \
	&& wget https://github.com/bander2/twit/releases/download/1.1.0/twit-linux-amd64 \
		-O /usr/local/bin/twit \
	&& chmod a+x /usr/local/bin/twit

ENTRYPOINT ["twit"]
