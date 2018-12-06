FROM alpine

LABEL "com.github.actions.name"="Cloudflare Worker Deployement With cURL"
LABEL "com.github.actions.description"="Deploy a worker to a cloudflare zone"
LABEL "com.github.actions.icon"="cloud"
LABEL "com.github.actions.color"="orange"

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]