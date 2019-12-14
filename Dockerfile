FROM python:3.7-alpine

LABEL "com.github.actions.name"="Copy WordPress Plugin Package to S3 Bucket"
LABEL "com.github.actions.description"="Copy a release file (typically a .zip) to an s3 Bucket"
LABEL "com.github.actions.icon"="refresh-cw"
LABEL "com.github.actions.color"="blue"

LABEL version="0.5.0"
LABEL repository="https://github.com/linchpin/plugin-s3-copy-action"
LABEL homepage="https://linchpin.com/"
LABEL maintainer="Linchpin <sayhi@linchpin.com>"

# https://github.com/aws/aws-cli/blob/master/CHANGELOG.rst
ENV AWSCLI_VERSION='1.16.265'

RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
