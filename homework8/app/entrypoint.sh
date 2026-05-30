#!/bin/sh
if [ -f /tmp/build/ROOT.war ]; then
    cp /tmp/build/ROOT.war /usr/local/tomcat/webapps/ROOT.war
fi
exec "$@"