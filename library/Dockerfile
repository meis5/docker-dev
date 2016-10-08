############################################################
# 开发环境容器
# 基于Ubuntu 16.04
############################################################
FROM devbase:1.0.0

MAINTAINER oorococo@gmail.com

ENV HOME /root
ENV NODE_VERSION 6.5.0
ENV GOLANG_VERSION 1.7
ENV SWIFT_VERSION 3.0-preview-6
WORKDIR $HOME

RUN mkdir Downloads
WORKDIR Downloads
RUN wget https://nodejs.org/dist/v6.5.0/node-v6.5.0-linux-x64.tar.xz
RUN wget https://storage.googleapis.com/golang/go1.7.linux-amd64.tar.gz
RUN wget https://swift.org/builds/swift-3.0-preview-6/ubuntu1510/swift-3.0-PREVIEW-6/swift-3.0-PREVIEW-6-ubuntu15.10.tar.gz
WORKDIR $HOME