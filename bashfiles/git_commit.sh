#!/bin/bash

source ~/bashfiles/colours.sh

if [ $# -ne 1 ]
then
    echo "Usage: `basename $0` '[OPTION]'"
    exit 1
fi

QUERY=$1
BRANCH=$(git rev-parse --abbrev-ref HEAD)

echo -e "${CYAN}$BRANCH: $QUERY${CLEAR}"
git commit -am "$BRANCH: $QUERY"
