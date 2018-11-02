FROM centos:centos7

MAINTAINER openliu <15251908@qq.com>

#ENV PGPOOL_VERSION 4.0

RUN yum update -y; exit 0

RUN yum -y install https://download.postgresql.org/pub/repos/yum/10/redhat/rhel-7-x86_64/pgdg-centos10-10-2.noarch.rpm
RUN yum -y install postgresql10
RUN yum -y install http://www.pgpool.net/yum/rpms/3.7/redhat/rhel-7-x86_64/pgpool-II-pg10-3.7.5-1pgdg.rhel7.x86_64.rpm
                   
#RUN yum -y install pgpool-II-pg96
RUN mkdir -p /var/log/pgpool

VOLUME [/etc/pgpool-II,/var/log/pgpool]

EXPOSE 9898
EXPOSE 9999

CMD ["pgpool","-n"]


