#!/bin/sh

exec /home/isucon/env.sh carton exec -- plackup -s Starlet -p 8080 --workers 2 --keepalive-timeout=120 --max-keepalive-reqs=100000 --max-reqs-per-child=100000 app.psgi
