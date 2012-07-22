# Simple Kiosk 
### a simple Adobe Air app for creating touch screen interfaces

## Getting Started w/ Homebrew

    brew install adobe-air-sdk mongodb
    # be sure to get adl in your path ie which adl returns /usr/local/Cellar/adobe-air-sdk/3.3/bin/adl or something similar.
    gem install bundler
    cd simpleKiosk/
    bundle install
    export SIMPLE_KIOSK_MONGO=/path/to/app/simpleKiosk/data/db
    ./mac_run.sh # or start mongo and sinatra then 
