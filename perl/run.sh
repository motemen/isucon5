#!/bin/sh

exec /home/isucon/env.sh carton exec -- plackup -s Gazelle --path /dev/shm/app.sock --workers 4 --max-reqs-per-child 100000 --min-reqs-per-child 80000 app.psgi
