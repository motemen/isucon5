#!/bin/sh

export NYTPROF=sigexit=int:start=no:file=/tmp/nytprof.out.$(date +%s):addpid=1

exec /home/isucon/env.sh carton exec -- plackup -MDevel::NYTProf -s Gazelle -p 8080 --workers 4 --disable-keepalive app.psgi
