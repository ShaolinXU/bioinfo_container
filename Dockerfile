FROM r-base@sha256:e74f32910ef1d08ed2175d742c2a0a65755c01bce066c0811d0fcb5d89ccbb22

RUN apt-get update && apt-get install -y \
  libcurl4-openssl-dev 

# 拷贝 R 安装脚本
COPY install_r_with_pak.R /tmp/install_r_with_pak.R

# 使用 pak 自动安装 R 包及其系统依赖
RUN Rscript /tmp/install_r_with_pak.R

# 设置工作目录
WORKDIR /home

# 默认启动 R
CMD ["R"]
