#!/bin/bash
cd "${0%/*}"
OUTPUT="${1:-search_head_backup.spl}"
chmod -R u=rwX,go= *
chmod -R u-x+X *
cd ..
tar -cpzf $OUTPUT --exclude=.* --overwrite search_head_backup 
