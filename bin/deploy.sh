#!/bin/bash

deploy() {
    ssh -t $1 'cd ~/deploy && git pull && cd ./perl && rm -f cpanfile.snapshot && carton install && sudo supervisorctl restart perl'
}

set  -v

deploy isu09a
deploy isu09b
deploy isu09c
