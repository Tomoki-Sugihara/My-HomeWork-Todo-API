FROM ruby:2.6.6

RUN apt-get update && \
   apt-get install -y nodejs vim --no-install-recommends && \
   rm -rf /var/lib/apt/lists/*
# RUN apt-get update && \
#    apt-get install -y mysql-client nodejs vim --no-install-recommends && \
#    rm -rf /var/lib/apt/lists/*

RUN mkdir /myproject

WORKDIR /myproject

ADD Gemfile /myproject/Gemfile
ADD Gemfile.lock /myproject/Gemfile.lock

RUN gem install bundler
RUN bundle install

ADD . /myproject