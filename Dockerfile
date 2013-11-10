FROM bmorearty/handson-ruby
MAINTAINER Alvin Lai <al@alvinlai.com>

RUN apt-get install -y libpq-dev sqlite3 libsqlite3-dev
RUN gem install bundler sqlite3-ruby --no-ri --no-rdoc

ADD dockernotes /opt/dockernotes

WORKDIR /opt/dockernotes
RUN bundle install

EXPOSE 3000
CMD bundle exec rake db:create && bundle exec rake db:migrate && bundle exec rails s
