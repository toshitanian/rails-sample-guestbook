# This Dockerfile is based on https://semaphoreci.com/community/tutorials/dockerizing-a-ruby-on-rails-application

FROM ruby:2.3.0

MAINTAINER Toshiya Kawasaki <kawasakitoshiya@gmail.com>

# Install dependencies:
RUN apt-get update && apt-get install -qq -y build-essential nodejs libpq-dev --fix-missing --no-install-recommends

ENV INSTALL_PATH /app
RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

# Ensure gems are cached and only get updated when they change. This will
# drastically increase build times when your gems do not change.
COPY . .
RUN bundle install

# Copy in the application code from your work station at the current directory over to the working directory.

# The default command that gets ran will be to start the Unicorn server.
CMD bundle exec puma -C config/puma.rb
