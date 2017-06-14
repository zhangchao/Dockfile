#!/bin/sh

echo "$@" | awk -F ' ' '{print $1}' | xargs git config --global user.name

echo "$@" | awk -F ' ' '{print $2}' | xargs git config --global user.email

if [ "$3" = 's' ] || [ "$3" = 'server' ]; then
    set -- /usr/bin/hexo s -i 0.0.0.0 -p 80
fi

if [ "$3" = 'd' ] || [ "$3" = 'deploy' ]; then
    set -- /usr/bin/hexo cl && /usr/bin/hexo d -g
fi

exec "$@"
