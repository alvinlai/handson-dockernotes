FROM ruby
MAINTAINER Alvin Lai <al@alvinlai.com>

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

ADD . /opt/dockernotes
WORKDIR /opt/dockernotes
RUN bundle install

EXPOSE 3000
CMD bundle exec rails s
