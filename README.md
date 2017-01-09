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
$ export RAILS_ENV=development DB_HOST=localhost DB_USERNAME=sample DB_PASSWORD=password
$ bundle install
$ bundle exec rake db:create db:migrate
$ bundle exec rake db:migrate
$ bundle exec rails s
```
Access to http://localhost:3000
