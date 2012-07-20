#!/bin/sh

safe_shutdown(){
  echo "adl shutdown complete"
  echo "Safely shutting down mongo"
  kill -15 $mongod_pid
  echo "Safely shutting down sinatra"
  kill -2 $sinatra_pid
  exit 0
}

trap "safe_shutdown" 2
mongod --port 27047 --rest --dbpath=$SIMPLE_KIOSK_MONGO &
mongod_pid=$!
ruby -rubygems simpleKioskController.rb &
sinatra_pid=$!
adl -nodebug application.xml
if [ $? -eq 0 ]; then
  safe_shutdown
fi

