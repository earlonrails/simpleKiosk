#!/bin/sh
mongod --port 27047 --rest --dbpath=/Users/telmate/Documents/simpleKiosk/data/db/
ruby -rubygems simpleKioskController.rb
/Developer/AdobeAirSDK2/bin/adl application.xml 
