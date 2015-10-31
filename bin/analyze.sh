#!/bin/sh

ssh -t isu09a 'cat /var/log/nginx/access_log.tsv | alp --sum --apptime-label=taken --uri-label=dispatch'

