#!/bin/bash

set  -v

ssh -t isu09a 'cd ~/deploy && git pull && cd ./perl && carton install --deployment && sudo supervisorctl restart perl'
ssh -t isu09b 'cd ~/deploy && git pull && cd ./perl && carton install --deployment && sudo supervisorctl restart perl'
ssh -t isu09c 'cd ~/deploy && git pull && cd ./perl && carton install --deployment && sudo supervisorctl restart perl'
