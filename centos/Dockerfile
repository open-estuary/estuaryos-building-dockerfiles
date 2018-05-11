FROM docker.io/openestuary/centos:5.0
RUN yum install -y yum-plugin-ovl
RUN yum install -y expect rpm-sign which
RUN yum install -y cmake devtoolset-4
RUN yum install -y maven-local systemd chkconfig initscripts ant
RUN yum install -y git gcc-c++ linux-firmware grubby
RUN yum install -y cpio python-requests wget xz createrepo lorax
RUN yum install -y genisoimage xorriso
RUN yum install -y python34 dpkg-dev quilt wget git rpm-build yum-utils make gcc
RUN yum install -y net-tools bc xmlto openssl-devel audit-libs-devel 'perl(ExtUtils::Embed)'
RUN yum install -y redhat-rpm-config asciidoc hmaccalc pesign xmlto
RUN yum install -y binutils-devel elfutils-devel elfutils-libelf-devel
RUN yum install -y ncurses-devel newt-devel numactl-devel pciutils-devel python-devel zlib-devel
RUN echo -e "[linaro-overlay]\n\
name=Linaro Overlay packages for CentOS 7\n\
baseurl=http://repo.linaro.org/rpm/linaro-overlay/centos-7/repo\n\
gpgcheck = 0\n" > /etc/yum.repos.d/linaro-overlay.repo && yum install -y luajit golang
RUN yum install -y python2-pip openssl wget
RUN yum update -y
ENV JAVA_HOME="/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.151-1.b12.el7_4.aarch64" 
