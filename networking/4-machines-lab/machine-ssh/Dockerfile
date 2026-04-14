FROM ubuntu:24.04

COPY install.sh /tmp/install.sh

RUN chmod +x /tmp/install.sh && /tmp/install.sh

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
