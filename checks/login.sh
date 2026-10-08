#!/bin/sh
# A seeded user logs in: the session form redirects to the dashboard.
curl -sS -o /dev/null -w '%{redirect_url}' -X POST \
  -d 'email=jmmastey@metacorp.com&password=railsgoat!' http://web:3000/sessions | grep -q '/dashboard'
