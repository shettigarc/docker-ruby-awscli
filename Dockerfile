FROM ruby:2.3.0

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

RUN apt-get install -y --no-install-recommends unzip python-dev && \
    curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip" && \
    unzip awscli-bundle.zip && \
    ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws && \
    rm -rf ./awscli-bundle awscli-bundle.zip

