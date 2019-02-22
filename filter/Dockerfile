FROM node:10

LABEL "com.github.actions.name"="filter"
LABEL "com.github.actions.description"="filter"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="green"

RUN apt-get update && apt-get install -y jq
ENV PATH="/usr/local/bin:${PATH}"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
