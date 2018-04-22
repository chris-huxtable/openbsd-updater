#! /bin/sh

find / -type f > $(uname -r | sed -e "s/\.//g")base.list
