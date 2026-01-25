#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

if docker compose version >/dev/null 2>&1; then
  DC="docker compose"
elif command -v docker-compose >/dev/null 2>&1; then
  DC="docker-compose"
else
  echo "Docker Compose not found. Install Docker + Compose."
  exit 1
fi

$DC -f compose/docker-compose.yml -f compose/docker-compose.teaching.yml up -d

echo "[+] Teaching environment running"
echo "    Modbus: 127.0.0.1:502"
echo "    HMI:    http://127.0.0.1:8080"
