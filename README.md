# factory-sandbox

A throwaway repo for proving the Agent Factory end to end, so test pull
requests never land on the Pilot Repo (agentic-devops ADR 0010). Created from
`agentic-devops/deploy/factory-sandbox/` by
`agentic-devops/scripts/factory-github-wizard.sh`. Nothing here matters
except that it is small, has one fast required check (`ci-gate`), and has a
Factory Contract.

## Usage

Run `greet.sh` without a name to use the default greeting:

```console
$ ./greet.sh
Hello, world!
```

Pass a name to greet someone specifically:

```console
$ ./greet.sh factory
Hello, factory!
```

Run `farewell.sh` without a name to use the default farewell, or pass a name:

```console
$ ./farewell.sh
Goodbye, world!
$ ./farewell.sh factory
Goodbye, factory!
```

Both scripts accept `--upper` to print the full message in uppercase. The
option can be used with or without a name:

```console
$ ./farewell.sh --upper factory
GOODBYE, FACTORY!
$ ./greet.sh --upper
HELLO, WORLD!
```

- `greet.sh`: the code smoke-test Tickets change
- `test.sh`: the tests (`ci-gate` runs them, along with shellcheck)
- `factory-contract.yaml`: the opt-in

**This repo is public**, so branch protection works on GitHub Free. That also
means anyone can comment on its issues, and comments reach the Coder.
Only people with triage rights can add the `ready-for-agent` label.
