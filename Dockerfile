FROM appropriate/curl

LABEL "com.github.actions.name"="Cloudflare Worker Deployement With cURL"
LABEL "com.github.actions.description"="Deploy a worker to a cloudflare zone"
LABEL "com.github.actions.icon"="cloud"
LABEL "com.github.actions.color"="orange"


ENTRYPOINT ["entrypoint.sh"]