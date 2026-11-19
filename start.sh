#!/bin/sh
set -e

exec odoo \
  --db_host="${DB_HOST:?Falta DB_HOST}" \
  --db_port="${DB_PORT:-5432}" \
  --db_user="${DB_USERNAME:?Falta DB_USERNAME}" \
  --db_password="${DB_PASSWORD:?Falta DB_PASSWORD}" \
  --http-interface=0.0.0.0 \
  --http-port="${PORT:-8069}" \
  --proxy-mode
