#!/bin/bash
# Git pull for all directories contained within the parent(current) directory.

source ~/bashfiles/colours.sh

for dir in ./* ; do
    # Ensure the item in the list is actually a directory.
    if [ -d "$dir" ]; then
        BASENAME=$(basename "$dir")
        echo -e "${CYAN}Attempting update for: ${UNDERLINE}$BASENAME${CLEAR}"

        # Step into the current directory.
        cd $BASENAME

        # Ensure this directory is a git repo.
        if [ -d ".git" ]; then

            # Grab the branch name.
            BRANCH=$(git rev-parse --abbrev-ref HEAD)

            # Only pull if it is on develop.
            if [ "$BRANCH" != "develop" ]; then
                echo -e "${RED}Not on develop: ${UNDERLINE}$BASENAME${CLEAR}"
            else
                git pull
            fi
        else
            echo -e "${RED}($BASENAME); is not a GIT repo${CLEAR}"
        fi

        # Return to the parent directory.
        cd ..
    fi
done
echo -e "${GREEN}Done updating all repos${CLEAR}"
