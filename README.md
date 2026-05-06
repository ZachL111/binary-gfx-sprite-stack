# binary-gfx-sprite-stack

`binary-gfx-sprite-stack` explores graphics with a small Dart codebase and local fixtures. The technical goal is to design a Dart verification harness for sprite systems, covering graph analysis, node-edge fixtures, and failure-oriented tests.

## Problem It Tries To Make Smaller

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Binary Gfx Sprite Stack Review Notes

The first comparison I would make is `geometry span` against `shader drift` because it shows where the rule is most opinionated.

## Working Pieces

- `fixtures/domain_review.csv` adds cases for geometry span and atlas pressure.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/binary-gfx-sprite-walkthrough.md` walks through the case spread.
- The Dart code includes a review path for `geometry span` and `shader drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Design Notes

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `geometry span`, `atlas pressure`, `shader drift`, and `render budget`.

The Dart implementation avoids hidden state so fixture changes are easy to reason about.

## Example Run

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

The check exercises the source code and the review fixture. `baseline` is the high score at 217; `edge` is the low score at 174.

## Known Limits

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
