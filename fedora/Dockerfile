FROM docker.io/arm64v8/fedora:28
RUN dnf install -y yum-plugin-ovl
RUN dnf install -y cpio lorax python-requests xz createrepo libselinux-utils hfsplus-tools
RUN dnf install -y yum-plugin-ovl
RUN dnf install -y genisoimage xorriso wget findutils createrepo
RUN dnf install -y fedpkg rsync openssl-devel make gcc bison flex wget
RUN dnf install -y findutils
RUN dnf update -y

