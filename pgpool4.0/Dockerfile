FROM centos:centos7

MAINTAINER openliu <15251908@qq.com>

#ENV PGPOOL_VERSION 4.0

VOLUME /etc/pgpool

RUN yum update -y; exit 0
RUN yum -y install http://www.pgpool.net/yum/rpms/4.0/redhat/rhel-7-x86_64/pgpool-II-release-4.0-1.noarch.rpm
RUN yum install pgpool-II-pg96

# Copy entrypoint script and Odoo configuration file
COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]



