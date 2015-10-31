#!/bin/bash

set  -v

deploy() {
    ssh -t $1 'cd ~/deploy && git pull && cd ./perl && rm -f cpanfile.snapshot && carton install && sudo supervisorctl restart perl'
}

deploy isu09a
deploy isu09b
deploy isu09c
