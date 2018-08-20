FROM linaro/ci-arm64-debian:stretch
RUN rm /etc/apt/sources.list.d/* && echo "deb-src http://mirrors.163.com/debian stretch main" >> /etc/apt/sources.list && apt-get update
RUN apt-get build-dep -y debian-installer linux
RUN apt-get install -y git graphviz ccache python-requests quilt cpio rsync dh-exec simple-cdd debian-archive-keyring pigz
COPY ESTUARY-GPG-KEY /tmp/ESTUARY-GPG-KEY
RUN cat /tmp/ESTUARY-GPG-KEY | apt-key --keyring /usr/share/keyrings/debian-archive-keyring.gpg add -
RUN cat /tmp/ESTUARY-GPG-KEY | apt-key add -
