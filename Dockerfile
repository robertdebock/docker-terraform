FROM hashicorp/terraform:1.0.0

LABEL maintainer="Robert de Bock <robert@meinit.nl>"

ENV container=docker

# Add az-cli
RUN apk add \
      py3-pip \
      python3-dev \
      libffi \
      libffi-dev \
      openssl-dev \
      build-base \
      --virtual build-dependencies && \
    pip install azure-cli && \
    apk del build-dependencies
