FROM ubuntu:24.04

COPY install.sh /tmp/install.sh
RUN chmod +x /tmp/install.sh && /tmp/install.sh

COPY config/vsftpd.conf /etc/vsftpd.conf

EXPOSE 21 22 21100-21110

CMD service ssh start && vsftpd /etc/vsftpd.conf
