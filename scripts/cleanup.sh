#!/bin/bash
set -e

APP="devops-web-project"
WEBAPPS="/usr/share/tomcat/webapps"

# In case tomcat is still running (safe even if already stopped)
systemctl stop tomcat || true
systemctl stop tomcat9 || true

# Remove old WAR and exploded directory
rm -f  "$WEBAPPS/$APP.war" || true
rm -rf "$WEBAPPS/$APP" || true
