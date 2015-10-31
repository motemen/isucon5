#!/bin/sh

export NYTPROF=sigexit=int:start=no:file=/tmp/nytprof.out.$(date +%s):addpid=1

exec /home/isucon/env.sh carton exec -- plackup -MDevel::NYTProf -s Starlet -p 8080 --workers 4 --keepalive-timeout=120 --max-keepalive-reqs=100000 --max-reqs-per-child=100000 app.psgi
