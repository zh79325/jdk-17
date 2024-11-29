FROM centos:centos7
ENV BUILDKIT_PROGRESS=plain
WORKDIR /
RUN yum install -y java-17-openjdk
