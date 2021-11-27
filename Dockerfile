FROM ruby:3.2.1-alpine3.17

RUN apk --update add build-base ruby-dev postgresql-dev tzdata git gcompat

RUN mkdir /app
WORKDIR /app

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock

RUN bundle install

ADD . /app

RUN bin/rails assets:precompile
