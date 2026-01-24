#!/usr/bin/env bash
set -euo pipefail

docker compose \
  -f compose/docker-compose.yml \
  -f compose/docker-compose.teaching.yml \
  up -d

echo "[+] Neverland Teaching environment is running."
echo "    Modbus: 127.0.0.1:502"
echo "    HMI:    http://127.0.0.1:8080 (read-only)"
