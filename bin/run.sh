#!/bin/sh

# set proper working directory
cd `dirname $0`

if [ -d "../bin" ]; then
  cd "../"
fi

# set port
port=7143

# start redis server
redis-server /etc/onetime/redis.conf

# start onetimesecret application
bundle exec thin -e dev -R config.ru -p $port start
