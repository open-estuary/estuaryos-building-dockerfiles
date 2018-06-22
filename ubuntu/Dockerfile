FROM arm64v8/ubuntu:bionic
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y wget apt-utils
RUN apt-get install -y expect libncurses-dev git
RUN apt-get install -y llvm-dev libclang-dev \
    libelf-dev bison flex libedit-dev zlib1g-dev
RUN apt-get install -y debhelper dkms cmake gcc devscripts rpm librpm-dev
RUN apt-get install -y debian-keyring gnupg dctrl-tools bc debiandoc-sgml xsltproc \
    libbogl-dev glibc-pic libslang2-pic libnewt-pic genext2fs e2fsprogs mklibs genisoimage dosfstools
RUN apt-get install -y grub-efi-arm64-bin mtools module-init-tools openssl xorriso \
    bf-utf-source docbook-xml docbook-xsl cpio python-requests
RUN apt-get install -y u-boot-tools xorriso libnuma-dev graphviz
RUN apt-get install -y automake dh-make equivs dh-systemd lsb-release fakeroot
COPY ESTUARY-GPG-SECURE-KEY /home/
COPY estuaryftp_ubuntu.list /etc/apt/sources.list.d/estuary.list
COPY ESTUARY-GPG-KEY /tmp/ESTUARY-GPG-KEY
RUN cat /tmp/ESTUARY-GPG-KEY | apt-key add -
RUN apt-get update
RUN apt-get install -y gnupg1 squashfs-tools
COPY ubuntu-archive-keyring.gpg /home/
RUN apt-get build-dep -q -y linux
