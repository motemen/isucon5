#!/bin/bash

deploy() {
    ssh -t $1 'cd ~/deploy && git pull && ./logrotate.sh &&  cd ./perl && rm -f cpanfile.snapshot && carton install && sudo supervisorctl restart perl && sudo /etc/init.d/nginx reload'
}

set  -v

deploy isu09a
deploy isu09b
deploy isu09c
ssh -t isu09c '/etc/init.d/memacached restart'
