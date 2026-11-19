#!/bin/sh
set -e

exec odoo \
  --db_host="${DB_HOST:?Falta DB_HOST}" \
  --db_port="${DB_PORT:-5432}" \
  --db_user="${ODOO_DB_USER:?Falta ODOO_DB_USER}" \
  --db_password="${ODOO_DB_PASSWORD:?Falta ODOO_DB_PASSWORD}" \
  --http-interface=0.0.0.0 \
  --http-port="${PORT:-8069}" \
  --proxy-mode
