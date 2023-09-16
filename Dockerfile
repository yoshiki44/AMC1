FROM ruby:3.1

WORKDIR /amc1

COPY Gemfile /amc1/Gemfile
COPY Gemfile.lock /amc1/Gemfile.lock

RUN bundle install

CMD ["rails", "server", "-b", "0.0.0.0"]