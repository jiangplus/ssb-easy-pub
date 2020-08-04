# ssb-easy-pub

A simple-to-use [Secure ScuttleButt (SSB)](https://www.scuttlebutt.nz) pub in docker.

# how to use

build docker image:

  make build

setup dir and public hostname:

  make setup site=your.public.site

start docker:

  make start

show server status:

  make whoami

create ssb invite:

  make create-invite count=10

# License

MIT License