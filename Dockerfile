FROM ubuntu:20.04

# ----------------------
# Necessary for most operations

RUN useradd -m user
RUN apt-get update

# ----------------------
# Necessary for Chinese typing

RUN DEBIAN_FRONTEND=noninteractive \
      apt-get install -y \
      fonts-noto-cjk language-pack-zh-hans
RUN locale-gen zh_TW.UTF-8  
ENV LC_ALL=zh_TW.UTF-8

# ----------------------
# Setup application

RUN DEBIAN_FRONTEND=noninteractive \
      apt-get install -y \
      gedit
ENTRYPOINT gedit 