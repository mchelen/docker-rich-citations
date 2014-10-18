FROM nitrousio/ruby:latest
MAINTAINER Mike Chelen <michael.chelen@gmail.com>


RUN \
  su action -l -c /bin/bash -c \
  'rbenv install 2.1.3 && \
  rbenv global 2.1.3 && \
  git clone https://github.com/ploslabs/rich_citations.git && \
  cd rich_citations && \
  bundle install && \
  cp config/database.example.yml config/database.yml && \
  bundle exec rake db:migrate && \
  bundle exec rails server'
