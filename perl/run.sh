#!/bin/sh

exec /home/isucon/env.sh carton exec -- plackup -s Gazelle -p 8080 --workers 4 --disable-keepalive app.psgi
