FROM docker.io/arm64v8/opensuse:leap
RUN zypper install -y wget xorriso mkisofs tar
RUN zypper install -y inst-source-utils mksusecd
RUN zypper install -y git osc build hostname sudo perl-DateTime-Format-DateParse make gcc
RUN zypper install -y --force-resolution perl-Bootloader splashy-mkinitrd
RUN zypper install -y keyutils iproute2 wicked curl btrfsprogs cryptsetup dmraid lvm2 mdadm multipath-tools cifs-utils open-iscsi rpcbind nfs-client
RUN zypper update -y

