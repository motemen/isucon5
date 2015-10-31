#!/bin/sh

exec /home/isucon/env.sh carton exec -- plackup -s Gazelle -p 8080 --workers 4 --max-reqs-per-child=100000 app.psgi
