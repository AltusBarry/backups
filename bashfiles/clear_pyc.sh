#!/bin/bash

# Colours
CLEAR='\033[0m'
GREEN='\033[0;32m'

find . -name \*.pyc -delete
echo -e "${GREEN}.pyc files cleared${CLEAR}"
