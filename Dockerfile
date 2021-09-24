FROM hashicorp/terraform:1.0.0

LABEL maintainer="Robert de Bock <robert@meinit.nl>"
LABEL build_date="2021-09-24"

ENV container=docker

# Add runtime requirements
RUN apk add python3 py3-pip

# Add az-cli
RUN apk add \
      python3-dev \
      libffi-dev \
      openssl-dev \
      build-base \
      --virtual build-dependencies && \
    pip install azure-cli && \
    apk del build-dependencies
