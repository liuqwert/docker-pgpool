FROM centos:centos7
ARG DOCKERIZE_VERSION=v0.2.0

MAINTAINER openliu <15251908@qq.com>

RUN yum update -y; exit 0

RUN yum -y install https://download.postgresql.org/pub/repos/yum/10/redhat/rhel-7-x86_64/pgdg-centos10-10-2.noarch.rpm
RUN yum -y install postgresql10
RUN yum -y install http://www.pgpool.net/yum/rpms/4.0/redhat/rhel-7-x86_64/pgpool-II-pg10-4.0.1-1pgdg.rhel7.x86_64.rpm

RUN  wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz && \
     tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz

ENV CHECK_USER replication_user
ENV CHECK_PASSWORD replication_pass
ENV CHECK_PGCONNECT_TIMEOUT 10
ENV WAIT_BACKEND_TIMEOUT 120
ENV REQUIRE_MIN_BACKENDS 0

COPY bin/entrypoint.sh /entrypoint.sh
COPY bin/pgpool_setup.sh /pgpool_setup.sh
COPY bin/pgpool_start.sh /pgpool_start.sh
RUN chmod +x /*.sh

EXPOSE 9898
EXPOSE 9999

CMD ["/entrypoint.sh"]


