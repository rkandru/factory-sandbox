# factory-sandbox

A throwaway repo for proving the Agent Factory end to end, so test pull
requests never land on the Pilot Repo (agentic-devops ADR 0010). Created from
`agentic-devops/deploy/factory-sandbox/` by
`agentic-devops/scripts/factory-github-wizard.sh`. Nothing here matters
except that it is small, has one fast required check (`ci-gate`), and has a
Factory Contract.

- `greet.sh`: the code smoke-test Tickets change
- `test.sh`: the tests (`ci-gate` runs them, along with shellcheck)
- `factory-contract.yaml`: the opt-in

**This repo is public**, so branch protection works on GitHub Free. That also
means anyone can comment on its issues, and comments reach the Coder.
Only people with triage rights can add the `ready-for-agent` label.
