FROM centos:centos7
ENV BUILDKIT_PROGRESS=plain
WORKDIR /
RUN cd /etc/yum.repos.d/
RUN mkdir repo_bak
RUN yum install -y wget
RUN wget http://mirrors.aliyun.com/repo/Centos-7.repo
RUN wget http://mirrors.163.com/.help/CentOS7-Base-163.repo
RUN yum clean all 
RUN yum makecache
RUN yum list | grep epel-release
RUN yum install -y epel-release
RUN yum install -y java-17-openjdk
