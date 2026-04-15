# Postgres Lab

Simple PostgreSQL lab on Ubuntu for practicing basic SQL inside a Docker container.

## Structure

```
postgres-lab/
├── Dockerfile
├── docker-compose.yml
├── install.sh
├── init/
│   ├── 01-schema.sql
│   └── 02-seed.sql
└── README.md
```

## What's inside

- **Ubuntu 24.04** as base image.
- **PostgreSQL** installed via `apt` (`postgresql` + `postgresql-contrib` packages).
- Utilities: `curl`, `wget`, `vim`, `net-tools`, `iputils-ping`.
- `/init/` folder inside the container with the SQL scripts.

## Sample database: `tienda`

A tiny shop with three related tables:

| Table | Purpose |
|---|---|
| `clients` | Customers (id, name, email, data) |
| `products` | Catalog (id, name, price, stock) |
| `request` | Orders linking clients with products |

## Start the lab

From this folder:

```bash
docker compose up -d --build
```

## Enter the container

```bash
docker compose exec postgres bash
```

## Connect to PostgreSQL

Inside the container:

```bash
su - postgres
psql
```

## Load the sample data

Once inside `psql`:

```sql
\i /init/01-schema.sql
\i /init/02-seed.sql
```

## Queries to try

```sql
\c tienda
\dt
SELECT * FROM clients;
SELECT * FROM products;
SELECT * FROM request;
```

## Useful psql commands

| Command | Description |
|---|---|
| `\l` | List all databases |
| `\c name` | Connect to database `name` |
| `\dt` | List tables in the current database |
| `\d table` | Describe a table |
| `\i file.sql` | Run a SQL script |
| `\q` | Quit psql |

## Stop the lab

```bash
docker compose down
```

## Exposed port

- `5432` → PostgreSQL (reachable from the host for external clients like DBeaver or TablePlus).
