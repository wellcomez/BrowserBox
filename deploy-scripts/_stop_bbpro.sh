#!/usr/bin/env bash

source ~/.nvm/nvm.sh

command -v pm2 &>/dev/null || npm i -g pm2@latest
pm2 delete basic-bb-main-service
pm2 delete run-docspark
pm2 delete devtools-server
pm2 delete start_audio
pkill -u $(whoami) node 
pkill -u $(whoami) chrome
pulseaudio -k
pm2 save --force

exit 0 
