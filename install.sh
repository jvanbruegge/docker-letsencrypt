#!/bin/bash

#install cron job
line="@weekly cd $(pwd) && docker-compose run --rm letsencrypt && docker restart nginx_root-nginx_1"

sudo crontab -l > tmp-cron

if ! grep -Fxq "$line" tmp-cron
then
    sudo crontab -l > tmp-cron

    echo "$line"  >> tmp-cron

    sudo crontab tmp-cron
    rm tmp-cron
fi
