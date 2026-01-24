#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

$COMPOSE -f compose/docker-compose.yml -f compose/docker-compose.teaching.yml down -v || true
$COMPOSE -f compose/docker-compose.yml -f compose/docker-compose.assessment.yml down -v || true

echo "[+] Neverland environment stopped."
