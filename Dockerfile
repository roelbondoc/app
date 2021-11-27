FROM ruby:3.1.2-alpine3.16

RUN apk --update add build-base ruby-dev postgresql-dev tzdata git

RUN mkdir /app
WORKDIR /app

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock

RUN bundle install

ADD . /app

RUN bin/rails assets:precompile
