# Docker Arena

Docker Arena is a learning playground built for anyone who wants to get hands-on experience with Linux, networking, and server administration — all without the risk of breaking a real machine.

## Why?

Setting up virtual machines is slow and resource-heavy. Docker lets you spin up isolated lab environments in seconds, break things, tear them down, and start fresh. This repo takes advantage of that by packaging ready-to-use practice labs.

## Who is this for?

- Students learning Linux and networking for the first time
- IT professionals sharpening their sysadmin skills
- Anyone preparing for certifications (LPIC, CompTIA Linux+, CCNA, etc.)
- Self-taught learners who prefer doing over reading

## What will you practice?

- Linux command line and system administration
- Web server setup and configuration
- Networking between hosts: subnets, pinging, port scanning, service discovery
- SSH access and remote management
- Reading and writing Dockerfiles and Compose files as a bonus

## How it works

Each lab is a self-contained directory with its own `Dockerfile`, `docker-compose.yml`, and setup scripts. Pick one, spin it up, and start practicing:

```bash
cd <any-lab-directory>
docker compose up -d
```

When you're done, tear it down:

```bash
docker compose down
```

No leftover configs, no cluttered host — just clean, repeatable environments.

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/) (v2+)

## License

This project is for educational purposes.
