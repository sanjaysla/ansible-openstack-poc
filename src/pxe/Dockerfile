FROM debian:12

RUN apt update && \
    apt install -y dnsmasq tftpd-hpa nginx ipmitool syslinux-common && \
    mkdir -p /srv/tftp /var/www/html && \
    cp /usr/lib/PXELINUX/pxelinux.0 /srv/tftp/ && \
    cp -r /usr/lib/syslinux/modules/bios/* /srv/tftp/

COPY dnsmasq.conf /etc/dnsmasq.conf
COPY tftp /srv/tftp
COPY http /var/www/html
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

EXPOSE 67/udp 69/udp 80

ENTRYPOINT ["/entrypoint.sh"]
