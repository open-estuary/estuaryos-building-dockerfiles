FROM linaro/ci-arm64-debian:stretch
RUN apt-get update && apt-get install simple-cdd debian-archive-keyring -y
RUN apt-get install -y git graphviz
RUN apt-get install -y ccache python-requests quilt cpio rsync dh-exec
RUN echo "deb-src http://mirrors.163.com/debian/ stretch main" >> /etc/apt/sources.list && apt-get update
RUN apt-get build-dep -q -y linux
COPY ESTUARY-GPG-KEY /tmp/ESTUARY-GPG-KEY
RUN cat /tmp/ESTUARY-GPG-KEY | apt-key --keyring /usr/share/keyrings/debian-archive-keyring.gpg add -
COPY estuaryftp_debian.list /etc/apt/sources.list.d/estuary.list
RUN apt-get update
