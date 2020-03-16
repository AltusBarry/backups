#!/bin/bash

# Only catch for now is, always wrap grep terms in single quotes and escape appropriately.
#grep -r --exclude-dir={ve,migrations,app,node_modules,media} --exclude={*pyc,*css,*scss,*sass}
if [ $# -ne 1 ]
then
    echo "Usage: `basename $0` '[OPTION]'"
    exit 1
fi
QUERY=$1

echo $QUERY

grep -rn --color=always\
    --exclude={*.svg,*.woff,*.webp,*.eot,*.pyc,*.pdf,*.jpg,*.png,jquery*,*.map,*bundle*,*min.js,*min.css}\
    --exclude-dir={ve,locale,sahi,fixtures,bundles,migrations,.git,sass,libs,node*,.tox,*egg*,docs,CACHE} "$QUERY"
