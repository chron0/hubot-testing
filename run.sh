#!/bin/bash

if [ ! -f ./hubot.conf ]; then
  ROOT_DIR="/opt/bots/hobot"
  source ${ROOT_DIR}/hubot.conf
  cd ${ROOT_DIR}
else
  source ./hubot.conf
fi

./bin/hubot --adapter matrix -n hobot 
