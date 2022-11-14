#!/bin/bash
set -e
JMETER_HOME=/opt/jmeter
mkdir -p $HOME/.config/jmeter/ ||:
test -f  "$HOME/.config/jmeter/config.properties" || touch $HOME/.config/jmeter/config.properties
ARGS="-p $HOME/.config/jmeter/config.properties -j $HOME/.config/jmeter/jmeter.log"
if [ "$1" ]; then 
    ARGS="$ARGS -t $1"
fi
/opt/jmeter/bin/jmeter $ARGS