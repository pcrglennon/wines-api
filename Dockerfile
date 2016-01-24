FROM ruby:2.2.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /wines_api
WORKDIR /wines_api
ADD Gemfile /wines_api/Gemfile
ADD Gemfile.lock /wines_api/Gemfile.lock
RUN bundle install
ADD . /wines_api