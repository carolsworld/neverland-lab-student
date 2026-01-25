#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

if docker compose version >/dev/null 2>&1; then
  DC="docker compose"
elif command -v docker-compose >/dev/null 2>&1; then
  DC="docker-compose"
else
  echo "Docker Compose not found."
  exit 1
fi

$DC -f compose/docker-compose.yml -f compose/docker-compose.teaching.yml down -v || true
$DC -f compose/docker-compose.yml -f compose/docker-compose.assessment.yml down -v || true

echo "[+] Environment stopped"
