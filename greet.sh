#!/usr/bin/env bash
# Deliberately trivial: the code live smoke-test Tickets ask the factory to
# change (agentic-devops ticket 15).
set -euo pipefail

name="${1:-world}"
echo "Hello, ${name}!"
