#!/bin/bash

app=$(jq -r .app appcenter.json)
group=$(jq -r .group appcenter.json)
token=$(jq -r .token appcenter.json)
file=$1

appcenter distribute release \
    --token "${token}" -a "${app}" \
    -g "${group}" -r "Upload By Cli" \
    -f "${file}"
