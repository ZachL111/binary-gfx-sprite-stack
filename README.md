# binary-gfx-sprite-stack

`binary-gfx-sprite-stack` is a focused Dart codebase around design a Dart verification harness for sprite systems, covering graph analysis, node-edge fixtures, and failure-oriented tests. It is meant to be easy to inspect, run, and extend without a hosted service.

## Binary Gfx Sprite Stack Walkthrough

I would read the project from the outside in: command, fixture, model, then roadmap. That keeps the graphics idea grounded in files that can be checked locally.

## Capabilities

- Includes extended examples for render inputs, including `recovery` and `degraded`.
- Documents stable output tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.
- Stores project constants and verification metadata in `metadata/project.json`.
- Adds a repository audit script that checks structure before running the language verifier.

## Reason For The Project

This project keeps the domain idea close to the tests. That makes it useful as a reference implementation, a small experiment, or a starting point for a more specialized tool.

## Where Things Live

- `lib`: library code
- `tests`: verification harness
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## How It Is Put Together

The core is a scoring model over demand, capacity, latency, risk, and weight. That keeps geometry data, layout fixtures, and render inputs in one explicit decision path. The threshold is 177, with risk penalty 7, latency penalty 3, and weight bonus 6. The Dart project uses a small library and assertion script, avoiding package dependencies for verification.

## Command Examples

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Data Notes

The examples are meant to be readable before they are exhaustive. They cover enough variation to show how latency and risk can pull a decision below the threshold.

## Check The Work

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Tradeoffs

The repository favors determinism over breadth. It does not pull live data, keep secrets, or depend on network access for verification.

## Possible Extensions

- Add malformed input fixtures so the failure path is as visible as the happy path.
- Split the scoring constants into a typed configuration object and validate it before use.
- Add a comparison mode that shows how decisions change when one signal is adjusted.
- Add one more graphics fixture that focuses on a malformed or borderline input.

## Getting It Running

The only required setup is the local Dart toolchain. After cloning, stay in the repo root so fixture paths resolve correctly.
