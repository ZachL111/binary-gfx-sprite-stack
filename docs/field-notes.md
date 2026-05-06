# Field Notes

The useful part of this repository is the small rule set around geometry span and shader drift.

The domain cases cover `geometry span`, `atlas pressure`, `shader drift`, and `render budget`. They sit beside the smaller starter fixture so the project has both a compact scoring check and a domain-flavored review check.

The widest spread is between `geometry span` and `shader drift`, so those are the first two cases I would preserve during a refactor.

The extra check gives the repository a behavior path that can fail for a domain reason, not only a syntax reason.
