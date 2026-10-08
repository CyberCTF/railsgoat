# OWASP RailsGoat

[OWASP RailsGoat](https://github.com/OWASP/railsgoat) by the OWASP RailsGoat contributors: a
deliberately vulnerable Ruby on Rails application for learning the OWASP Top 10 in Rails. This
repository runs it with [Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml)
describes the machine, and the upstream source in [`build/web/app/`](build/web/app) builds with
its own Dockerfile, on a pinned Ruby image.

| Machine | Service |
| --- | --- |
| web | RailsGoat (Rails, SQLite) on port 3000 |

## Run it

```bash
isoloom generate
isoloom up docker
```

Then open http://localhost:3000/ and sign up, or log in as `jmmastey@metacorp.com` /
`railsgoat!`. The same spec runs as Docker on a local VM (`docker-vm`), on a cloud VM
(`cloud-docker`) or on Kubernetes. Lab guide: the tutorials inside the application and the
[RailsGoat wiki](https://github.com/OWASP/railsgoat/wiki).

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

MIT, as RailsGoat ([LICENSE](LICENSE)). This application is deliberately vulnerable: keep it
isolated.
