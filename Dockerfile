FROM nitrousio/ruby:latest
MAINTAINER Mike Chelen <michael.chelen@gmail.com>

RUN git clone https://github.com/ploslabs/rich_citations.git

RUN cd rich_citations

RUN bundle install

RUN cp config/database.example.yml config/database.yml

RUN bundle exec rake db:migrate

CMD bundle exec rails server


