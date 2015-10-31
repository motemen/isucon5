#!/bin/bash

deploy() {
    ssh -t $1 'cd ~/deploy && git checkout af9b642aa9a68bd15bd514c3ff2d123f60c9eb1c && ./logrotate.sh &&  cd ./perl && rm -f cpanfile.snapshot && carton install && sudo supervisorctl restart perl && sudo /etc/init.d/nginx reload'
}

set  -v

deploy isu09a
deploy isu09b
deploy isu09c
ssh -t isu09c 'sudo /etc/init.d/memcached restart'
