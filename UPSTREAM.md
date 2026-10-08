# Upstream

| | |
| --- | --- |
| Project | OWASP RailsGoat |
| Repository | https://github.com/OWASP/railsgoat |
| Version | main (no current release tag) |
| Commit | f5951f13089d85c979de09e7da3c8c0fb982f94a |
| Licence | MIT |

`build/web/app/` is that commit, unchanged, without its Git history. `build/web/Dockerfile` is
upstream's Dockerfile with these changes: the Ruby image is pinned to `ruby:3.4.1-bookworm`,
bundler to 4.0.4 (the version in Gemfile.lock), the SQLite database is set up at build time
(`rails db:setup`, the README's Docker step), the server command of upstream's docker-compose.yml
is the image's `CMD`, and `RAILS_DEVELOPMENT_HOSTS=web` lets Rails answer requests addressed to
the machine name. Gems install from upstream's Gemfile.lock. To update, replace `build/web/app/`
with a newer commit, then change this table.
