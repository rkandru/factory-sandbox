#!/usr/bin/env bash
# Deliberately trivial: the code live smoke-test Tickets ask the factory to
# change (agentic-devops ticket 15).
set -euo pipefail

if [[ "${1:-}" == "--upper" ]]; then
  name="${2:-world}"
  greeting="Hello, ${name}!"
  echo "${greeting^^}"
else
  name="${1:-world}"
  echo "Hello, ${name}!"
fi
