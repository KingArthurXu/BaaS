FROM centos:7
MAINTAINER ArthurXu <qingyu.xu@veritas.com>

ENV BAAS_VERSION=1.1

ADD ./requirements.txt /

RUN yum clean all \
    && yum install -y python-setuptools \
    && easy_install pip \
    && pip install -r /requirements.txt \
        && yum clean all \
        && rm -rf /var/cache/yum \
        && rm -rf /root/.cache
