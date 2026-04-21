#!/usr/bin/env bash
set -euo pipefail

echo "[1/3] Type checking..."
yarn test:typecheck

echo "[2/3] Linting code..."
yarn test:code

echo "[3/3] Running app tests..."
yarn test:app -- --watch=false

echo "Quick checks passed."
