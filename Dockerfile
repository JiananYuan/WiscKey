# Version 0.1.0

# 基础镜像
FROM ubuntu:18.04

# 维护者信息
MAINTAINER yuanjiajiaqq@163.com

# 镜像操作命令
COPY . /app
WORKDIR /app/WiscKey
# RUN apt update && apt-get install make && make
RUN apt update \
 && apt-get install -y build-essential \
 && apt-get install -y libboost-dev \
 && make

# 容器启动命令


