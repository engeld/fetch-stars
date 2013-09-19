#!/bin/bash
#set -x

#####
# TODO: Fix the loop so it can handle more than just one result page
#
#


GITHUB_OAUTH_TOKEN=
GITHUB_API="https://api.github.com"
GITHUB_URL="https://github.com"
GITHUB_STARS_PER_PAGE=5
CURL_OPS="-s"
BASE_PATH="${HOME}/Dev/tmp"
CURRENT_PATH=`pwd`

if [ -z "${GITHUB_OAUTH_TOKEN}" ]; then
    echo "Authorization required!";
    echo "Please enter your GitHub username:";
    read GITHUB_USERNAME;
    echo "Please enter your GitHub password:";
    read GITHUB_PASSWORD;
fi

STAR_REQUEST=`curl ${CURL_OPS}  -u ${GITHUB_USERNAME}:${GITHUB_PASSWORD} ${GITHUB_API}/user/starred?page=1=per_page=${GITHUB_STARS_PER_PAGE} | jsawk -a 'return this.join("\n")' 'return this.full_name'`
for REPO in $STAR_REQUEST; do
    echo "\nProcessing ${REPO}...";
    
    REPO_OWNER=`echo ${REPO} | cut -d'/' -f1`
    
    mkdir -p "${BASE_PATH}/${REPO_OWNER}";
    cd "${BASE_PATH}/${REPO_OWNER}";
    git clone "${GITHUB_URL}/${REPO}.git"
    
    cd "$CURRENT_PATH";
    echo "Processing ${REPO} done!\n\n";
done
