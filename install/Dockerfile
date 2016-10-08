############################################################
# 开发环境容器
# 基于Ubuntu 16.04
############################################################
FROM lib:1.0.0

MAINTAINER oorococo@gmail.com

ENV HOME /root
WORKDIR $HOME

# 安装 Nodejs
WORKDIR Downloads
ENV NODE_VERSION 6.5.0
RUN tar -xvf node-v$NODE_VERSION-linux-x64.tar.xz
RUN rm node-v$NODE_VERSION-linux-x64.tar.xz
RUN mv node-v$NODE_VERSION-linux-x64 node-v$NODE_VERSION
RUN mkdir -p /root/Library
RUN mv node-v$NODE_VERSION /root/Library
ENV NODE_HOME /root/Library/node-v$NODE_VERSION
ENV PATH $NODE_HOME/bin:$PATH

# 安装 Golang
ENV GOLANG_VERSION 1.7
RUN tar -xzf go$GOLANG_VERSION.linux-amd64.tar.gz
RUN rm go$GOLANG_VERSION.linux-amd64.tar.gz
RUN mv go go$GOLANG_VERSION
RUN mv go$GOLANG_VERSION /root/Library
ENV GOROOT /root/Library/go$GOLANG_VERSION
RUN mkdir /root/Workspace
ENV GOPATH /root/Workspace
ENV PATH $GOROOT/bin:$GOPATH/bin:$PATH

# 安装 Swift
ENV SWIFT_VERION 3.0-PREVIEW-6-ubuntu15.10
RUN tar -xzf swift-$SWIFT_VERION.tar.gz
RUN rm swift-$SWIFT_VERION.tar.gz
RUN mv swift-$SWIFT_VERION swift-3.0
RUN mv swift-3.0 /root/Library
ENV SWIFT_HOME /root/Library/swift-3.0/usr
ENV PATH $SWIFT_HOME/bin:$PATH

VOLUME /root/Workspace
WORKDIR $HOME
