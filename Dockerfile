# https://linuxtut.com/en/12060150fad1616e37a0/#fromHistory
FROM ubuntu:20.04

#ENV DEBIAN_FRONTEND=noninteractive

RUN useradd -m user

RUN apt-get update

#RUN apt-get install -y fonts-noto-cjk

# ----------------------

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y gedit

RUN apt-get install -y fonts-noto-cjk

RUN apt-get install -y fcitx5

RUN apt-get install -y language-pack-zh-hans

RUN locale-gen zh_TW.UTF-8  
ENV LANG=zh_TW.UTF-8 \
    LC_ALL=zh_TW.UTF-8

ENTRYPOINT gedit 