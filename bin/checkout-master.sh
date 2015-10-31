#!/bin/bash

checkout_master() {
    ssh -t $1 'cd ~/deploy && git checkout master && git pull'
}

set  -v

checkout_master isu09a
checkout_master isu09b
checkout_master isu09c
