FROM debian:9.12-slim

LABEL "com.github.actions.name"="Post Typetalk messages"
LABEL "com.github.actions.description"="Post Typetalk messages from your own bot"
LABEL "com.github.actions.icon"="message-square"
LABEL "com.github.actions.color"="gray-dark"

LABEL version="0.9.0"
LABEL repository="https://github.com/shomatan/typetalk-action"
LABEL homepage="https://github.com/shomatan/typetalk-action"
LABEL maintainer="Shoma Nishitateno <shoma416@gmail.com>"

RUN apt-get update && apt-get install -y curl

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]