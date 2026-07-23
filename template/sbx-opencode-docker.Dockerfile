FROM docker/sandbox-templates:opencode-docker

USER root
RUN apt-get update -y && apt-get install --no-install-recommends -y \ 
  socat \
  && rm -rf /var/lib/apt/lists/*

USER agent
