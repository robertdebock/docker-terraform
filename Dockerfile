FROM hashicorp/terraform:1.3.2

LABEL maintainer="Robert de Bock <robert@meinit.nl>"
LABEL build_date="2022-10-14"

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
    pip install --upgrade pip && \
    pip install azure-cli && \
    apk del build-dependencies
