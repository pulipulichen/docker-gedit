#docker-compose build

export MY_UID="$(id -u)"
export MY_GID="$(id -g)"
export TZ=${TZ}
export DISPLAY=$DISPLAY 
export XMODIFIERS=$XMODIFIERS 
export QT_IM_MODULE=$QT_IM_MODULE 
export GTK_IM_MODULE=$GTK_IM_MODULE 
export AUDIO_ID=`getent group audio | cut -d: -f3`
export VIDEO_GID=`getent group video | cut -d: -f3`
#export LC_ALL=$LC_ALL # 設了會妨礙輸入法
export LANG=$LANG

#docker-compose up
#docker-compose run app gedit
docker-compose run app bash


