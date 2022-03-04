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
#ENTRYPOINT gedit 

RUN apt-get install -y smplayer
RUN apt-get install -y vlc

# https://forum.odroid.com/viewtopic.php?f=202&t=41987
RUN apt install paprefs -y
RUN ln -s /usr/lib/pulse-13.99.1 /usr/lib/pulse-13.99
RUN apt-get install alsa-base pulseaudio -y
RUN pulseaudio --start

#ENTRYPOINT bash