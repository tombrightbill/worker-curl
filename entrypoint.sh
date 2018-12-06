#!/bin/bash

if [[ "$GITHUB_REF" != "refs/heads/master" ]]; then
	echo "$GITHUB_REF was not master, exiting..."
	exit 0
fi

echo "On branch ${GITHUB_REF}, deploying..."

curl -H "x-auth-key: $(API_KEY)" -H "x-auth-email: $(EMAIL)" -vso /dev/null "https://api.cloudflare.com/client/v4/zones/$ZONE_ID/workers/script" --data-binary "@$(WORKER_SCRIPT)"