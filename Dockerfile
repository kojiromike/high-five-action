FROM alpine

LABEL "com.github.actions.name"="High Five"
LABEL "com.github.actions.description"="Give High Five after a PR is merged"

LABEL "com.github.actions.icon"="activity"
LABEL "com.github.actions.color"="green"

RUN apk add --no-cache bash ca-certificates curl jq

COPY github-highfive /usr/bin/github-highfive
CMD ["github-highfive"]
