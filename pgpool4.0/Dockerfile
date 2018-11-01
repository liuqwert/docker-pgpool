FROM centos:centos7

MAINTAINER openliu <15251908@qq.com>

#ENV PGPOOL_VERSION 4.0

RUN yum update -y; exit 0
RUN yum -y install http://www.pgpool.net/yum/rpms/4.0/redhat/rhel-7-x86_64/pgpool-II-release-4.0-1.noarch.rpm

ENV PGPOOL_CONF /etc/pgpool