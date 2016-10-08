############################################################
# 开发环境容器
# 基于Ubuntu 16.04
############################################################
# FROM config:1.0.0
FROM ubuntu:16.04


MAINTAINER oorococo@gmail.com

ENV HOME /root
WORKDIR $HOME
RUN apt-get update

RUN apt-get install net-tools
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh | true

CMD ["/usr/bin/zsh"]

EXPOSE 3000 4000 8000 8080 443 80