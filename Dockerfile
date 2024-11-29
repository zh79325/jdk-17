FROM public.ecr.aws/propeller/centos7-base:latest
ENV BUILDKIT_PROGRESS=plain
WORKDIR /
RUN ls -l /etc/yum.repos.d
RUN mkdir /etc/yum.repos.d/repo_bak
RUN mv /etc/yum.repos.d/*.repo /etc/yum.repos.d/repo_bak/
COPY Centos-7.repo etc/yum.repos.d/
#COPY CentOS7-Base-163.repo etc/yum.repos.d/
RUN ls -l /etc/yum.repos.d
#RUN wget http://mirrors.aliyun.com/repo/Centos-7.repo
#RUN wget http://mirrors.163.com/.help/CentOS7-Base-163.repo
RUN yum clean all 
RUN yum makecache
RUN yum list | grep epel-release
RUN yum install -y epel-release
RUN yum install -y wget java-17-openjdk
