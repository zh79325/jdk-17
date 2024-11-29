FROM centos:centos7
ENV BUILDKIT_PROGRESS=plain
WORKDIR /
RUN cd /etc
RUN pwd
RUN ls -l
RUN mkdir yum.repos.d
RUN pwd
RUN ls -l
RUN cd /etc/yum.repos.d/
RUN pwd
RUN ls -l
RUN mkdir repo_bak
RUN mv *.repo repo_bak/
COPY Centos-7.repo etc/yum.repos.d/
COPY CentOS7-Base-163.repo etc/yum.repos.d/
RUN ls -l
#RUN wget http://mirrors.aliyun.com/repo/Centos-7.repo
#RUN wget http://mirrors.163.com/.help/CentOS7-Base-163.repo
RUN yum clean all 
RUN yum makecache
RUN yum list | grep epel-release
RUN yum install -y epel-release
RUN yum install -y wget java-17-openjdk
