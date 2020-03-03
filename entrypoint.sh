#!/bin/sh
set -eu

TOPIC_ID=$1
MESSAGE=$2

if [[ -z "$TYPETALK_TOKEN" ]]; then
  echo "TYPETALK_TOKEN not set."
  exit 1
fi

if [[ -z "$TOPIC_ID" ]]; then
  echo "TOPIC_ID not set."
  exit 1
fi

curl -sSf \
    -d "typetalkToken=$TYPETALK_TOKEN" \
    --data-urlencode "message=$MESSAGE" \
    -d "showLinkMeta=false" \
    -o /dev/null \
    "https://typetalk.com/api/v1/topics/$TOPIC_ID"