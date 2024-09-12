#!/bin/bash
cd "${0%/*}"
OUTPUT="${1:-SearchHeadBackup.spl}"
chmod -R u=rwX,go= *
chmod -R u-x+X *
chmod -R u=rwx,go= bin/*
cd ..
tar -cpzf $OUTPUT --exclude=.* --overwrite SearchHeadBackup 
