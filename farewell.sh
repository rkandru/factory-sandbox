#!/usr/bin/env bash
set -euo pipefail

if [[ "${1:-}" == "--upper" ]]; then
  name="${2:-world}"
  farewell="Goodbye, ${name}!"
  echo "${farewell^^}"
else
  name="${1:-world}"
  echo "Goodbye, ${name}!"
fi
