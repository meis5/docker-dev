############################################################
# 开发环境容器
# 基于Ubuntu 16.04
############################################################
FROM ubuntu:16.04

MAINTAINER oorococo@gmail.com

ENV HOME /root
WORKDIR $HOME

# 设置正确的语言信息
RUN locale-gen en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

# 安装基本组件
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get update -y
RUN apt-get install -y \
    --no-install-suggests \
    --no-install-recommends \
    libcurl4-openssl-dev openssl libssl-dev \
    build-essential ca-certificates xz-utils apt-utils \
    openssh-server openssh-client wget curl wget git vim zsh rsync \
    clang libicu-dev sqlite3 \
    python python3 python-dev python3-dev libpython2.7-dev libpython3-dev libxml2
RUN apt-get install software-properties-common -y
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get update -y

CMD ["/usr/bin/zsh"]
