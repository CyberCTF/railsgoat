# Upstream's Dockerfile (app/Dockerfile) with these changes: the Ruby base image is pinned to its
# Debian release (ruby:3.4.1-bookworm), bundler is pinned to the version Gemfile.lock was
# bundled with (4.0.4), the source is added from app/, the SQLite database is set up at build
# time (the README's `docker-compose run web rails db:setup` step), and the server command of
# upstream's docker-compose.yml is the image's CMD. RAILS_DEVELOPMENT_HOSTS lets Rails answer
# requests addressed to the machine name `web` (its host authorization admits only localhost).
FROM --platform=linux/amd64 ruby:3.4.1-bookworm
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /myapp
WORKDIR /myapp
ADD app/Gemfile /myapp/Gemfile
ADD app/Gemfile.lock /myapp/Gemfile.lock
RUN gem install bundler -v 4.0.4
RUN bundle install
ADD app/ /myapp
RUN bundle exec rails db:setup
ENV RAILS_DEVELOPMENT_HOSTS=web
EXPOSE 3000
CMD ["bash", "-c", "rm -f tmp/pids/server.pid && bundle exec rails s -p 3000 -b '0.0.0.0'"]
