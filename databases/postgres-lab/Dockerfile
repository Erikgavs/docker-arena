FROM ubuntu:24.04

COPY install.sh /tmp/install.sh
RUN chmod +x /tmp/install.sh && /tmp/install.sh

COPY init/ /init/

EXPOSE 5432

CMD service postgresql start && bash
