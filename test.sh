#!/usr/bin/env bash
# The sandbox's whole test suite, run by CI (ci-gate) and listed as a check in
# factory-contract.yaml.
set -euo pipefail
cd "$(dirname "$0")"

failures=0
expect() {
  local expected="$1"; shift
  local actual
  actual="$("$@")"
  if [ "${actual}" = "${expected}" ]; then
    echo "ok   $*"
  else
    echo "FAIL $*: expected '${expected}', got '${actual}'"
    failures=$((failures + 1))
  fi
}

expect "Hello, world!" ./greet.sh
expect "Hello, factory!" ./greet.sh factory
expect "Goodbye, world!" ./farewell.sh
expect "Goodbye, factory!" ./farewell.sh factory
expect "GOODBYE, FACTORY!" ./farewell.sh --upper factory
expect "GOODBYE, WORLD!" ./farewell.sh --upper
expect "HELLO, FACTORY!" ./greet.sh --upper factory
expect "HELLO, WORLD!" ./greet.sh --upper

[ "${failures}" -eq 0 ]
