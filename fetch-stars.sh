#!/bin/bash
set -x

#####
# TODO: Fix the loop so it can handle more than just one result page
#
#


GITHUB_API="https://api.github.com"
GITHUB_URL="https://github.com"
GITHUB_CLIENT_ID="3a683ff505fc63ef0ffe"
GITHUB_CLIENT_SCOPE="user, repo"

GITHUB_STARS_PER_PAGE=5
CURL_OPS="-s"
BASE_PATH="${HOME}/tmp"
CURRENT_PATH=`pwd`

if [ -z "${GITHUB_OAUTH_TOKEN}" ]; then
  echo "Authorization required!";
  read -p "Enter your GitHub username: " GITHUB_USERNAME;
  read -p "Enter your GitHub password: " GITHUB_PASSWORD;
  
  GITHUB_OAUTH_REQ="$GITHUB_API/authorizations --user ${GITHUB_USERNAME}:${GITHUB_PASSWORD} --data { 'scopes':[${GITHUB_CLIENT_SCOPE}], 'client_id': "${GITHUB_CLIENT_ID}", 'note': 'FETCH STARS' }"  
  GITHUB_OAUTH_TOKEN=`curl $GITHUB_OAUTH_REQ`
fi

#STAR_REQUEST=`curl ${CURL_OPS}  -u ${GITHUB_USERNAME}:${GITHUB_PASSWORD} ${GITHUB_API}/user/starred?page=1=per_page=${GITHUB_STARS_PER_PAGE} | jsawk -a 'return this.join("\n")' 'return this.full_name'`
#for REPO in $STAR_REQUEST; do
#  printf "\nProcessing ${REPO}...";
    
#  REPO_OWNER=`echo ${REPO} | cut -d'/' -f1`
#  mkdir -p "${BASE_PATH}/${REPO_OWNER}";
#  cd "${BASE_PATH}/${REPO_OWNER}";
#  git clone "${GITHUB_URL}/${REPO}.git"
#  cd "$CURRENT_PATH";
#  printf "Processing ${REPO} done!\n\n";
#done
