FROM ipfs/go-ipfs:v0.6.0

ADD scripts /scripts
ADD scripts/container_daemon /usr/local/bin/start_ipfs