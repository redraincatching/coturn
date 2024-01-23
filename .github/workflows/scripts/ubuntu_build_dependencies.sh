apt-get update
apt-get install -y \
	build-essential pkgconf
apt-get install -y \
	wget \
	libevent-dev \
	libssl-dev \
	libpq-dev libsqlite3-dev \
	libhiredis-dev \
	libmongoc-dev \
	libmicrohttpd-dev
if [ "$OSTYPE"  = 'ubuntu:16.04' ]; then apt-get install -y libmariadb-client-lgpl-dev; fi
if [ "$OSTYPE" != 'ubuntu:16.04' ]; then apt-get install -y libmariadb-dev; fi
wget https://github.com/digitalocean/prometheus-client-c/releases/download/v0.1.3/libprom-dev-0.1.3-Linux.deb && \
	wget https://github.com/digitalocean/prometheus-client-c/releases/download/v0.1.3/libpromhttp-dev-0.1.3-Linux.deb && \
	apt install ./libprom-dev-0.1.3-Linux.deb ./libpromhttp-dev-0.1.3-Linux.deb && \
	rm ./libprom-dev-0.1.3-Linux.deb ./libpromhttp-dev-0.1.3-Linux.deb
