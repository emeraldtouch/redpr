# REDPR

## How to start working on project

## Initialization

```
$ git clone git@github.com:amberaries/redpr.git
$ docker-compose build
$ docker-compose run --rm runner yarn install
docker-compose run --rm runner yarn add bootstrap jquery popper.js
$ docker-compose run --rm runner ./bin/setup
```

## Commands

```
$ docker-compose up rails
$ docker-compose up rails webpacker
```

## Tips & Tricks

```
$ docker-compose run --rm runner
$ docker-compose run --rm runner [<COMMAND>]

$ docker-compose run --rm runner bundle outdated
$ docker-compose run --rm runner bundle update
$ docker-compose run --rm runner bundle install

$ docker-compose run --rm runner rails db:reset
$ docker-compose run --rm runner rails db:create
$ docker-compose run --rm runner rails db:migrate

$ docker-compose run --rm runner rails g controller promo index

$ RAILS_ENV=test docker-compose run --rm runner rspec spec
$ RAILS_ENV=test docker-compose run --rm runner rspec --format documentation
$ RAILS_ENV=test docker-compose run --rm runner rspec --profile 2
$ RAILS_ENV=test docker-compose run --rm runner rspec --only-failures

$ docker-compose run --rm runner yarn add bootstrap jquery popper.js
```
