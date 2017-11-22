FROM ruby:2.3-alpine

RUN mkdir -p /opt/onetimesecret
WORKDIR /opt/onetimesecret

RUN apk update && \
    apk add --no-cache \
        make \
        gcc \
        g++

ADD Gemfile Gemfile.lock ./
RUN bundle install
ADD . ./
