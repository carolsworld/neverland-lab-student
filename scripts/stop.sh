#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

COMPOSE="$(./scripts/_compose.sh)"
if [ -z "$COMPOSE" ]; then
  echo "[-] Docker Compose not found."
  exit 1
fi

$COMPOSE -f compose/docker-compose.yml -f compose/docker-compose.teaching.yml down -v || true
$COMPOSE -f compose/docker-compose.yml -f compose/docker-compose.assessment.yml down -v || true

echo "[+] Neverland environment stopped."
