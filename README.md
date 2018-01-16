# Simple Ruby on Rails Sample

This is a very simple Ruby on Rails sample application.

# Dependencies
## Ruby version
`2.3.0`

## System dependencies
- rbenv
- PostgreSQL
- NodeJS

# Running Locally

```
$ git clone git@github.com:kawasakitoshiya/rails-sample-guestbook.git
$ cd rails-sample-guestbook
$ export RAILS_ENV=development DATABASE_URL=postgresql://postgres:password@localhost
$ bundle install
$ bundle exec rake db:create db:migrate
$ bundle exec rake db:migrate
$ bundle exec rails s
```
Access to http://localhost:3000

# Docker

## Build docker image
```
$ docker build -t rails-sample-guestbook .
```

## Run docker container
```
$ docker run -it -p 3000:3000 -e RAILS_ENV=production -e DATABASE_URL=postgresql://<db_user>:<db_password>@<db_host> -e SECRET_KEY_BASE=<secret_key_base> rails-sample-guestbook
```

## Run rake db command
```
$ docker run -it -e RAILS_ENV=production -e DATABASE_URL=postgresql://<db_user>:<db_password>@<db_host> rails-sample-guestbook rake db:create
$ docker run -it -e RAILS_ENV=produciton -e DATABASE_URL=postgresql://<db_user>:<db_password>@<db_host> rails-sample-guestbook rake db:migrate
```

## Run docker compose

```
$ docker-compose up
```
