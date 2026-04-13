# Docker Arena

A collection of Docker-based lab environments for practicing Linux administration, web server configuration, and networking fundamentals.

## Labs

### Linux

#### `linux/ubuntu-normal_lab`
General-purpose Ubuntu 24.04 lab with common sysadmin tools pre-installed (curl, wget, git, vim, Python 3, Apache2, OpenSSH). Exposes ports 80 and 22.

```bash
cd linux/ubuntu-normal_lab
docker compose up -d
```

| Port  | Service |
|-------|---------|
| 8080  | HTTP    |
| 2222  | SSH     |

SSH access: `ssh root@localhost -p 2222` (password: `toor`)

---

### Web Servers

#### `webservers/nginx/ubuntu-srv-nginx`
Ubuntu 24.04 running Nginx with a custom site configuration and SSH access. The `website/` directory is mounted as a volume for live editing.

```bash
cd webservers/nginx/ubuntu-srv-nginx
docker compose up -d
```

| Port  | Service |
|-------|---------|
| 8081  | HTTP    |
| 2224  | SSH     |

SSH access: `ssh root@localhost -p 2224` (password: `toor`)

---

### Networking

#### `networking/basic-lab`
Two-container lab on a custom bridge network (`192.168.5.0/24`) for practicing networking between hosts.

| Container    | IP             | Tools                          |
|-------------|----------------|--------------------------------|
| my-machine  | 192.168.5.29   | nmap, net-tools, iputils-ping  |
| webserver   | 192.168.5.32   | Nginx, net-tools, iputils-ping |

```bash
cd networking/basic-lab
docker compose up -d
```

Access the web server at `http://localhost:8585`. Attach to `my-machine` to scan or ping the network:

```bash
docker exec -it my-machine bash
ping 192.168.5.32
nmap 192.168.5.32
```

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/) (v2+)

## Quick Start

```bash
# Clone the repo
git clone https://github.com/<your-user>/docker-arena.git
cd docker-arena

# Pick a lab and spin it up
cd networking/basic-lab
docker compose up -d

# When done
docker compose down
```

## Project Structure

```
docker-arena/
├── linux/
│   └── ubuntu-normal_lab/      # General-purpose Ubuntu lab
├── networking/
│   └── basic-lab/              # Two-host networking lab
└── webservers/
    └── nginx/
        └── ubuntu-srv-nginx/   # Nginx web server lab
```

## License

This project is for educational purposes.
