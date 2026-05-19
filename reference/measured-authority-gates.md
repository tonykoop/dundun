# Dundun Trio Measured Authority Gates

Status: validation checklist, not a finished drum design.

These gates sit in front of any trio CAD claim. Existing planning dimensions
in [`design.md`](../design.md), [`family-spec.csv`](../family-spec.csv),
[`drawings/`](../drawings/), and the scanned 2021 planning pages remain
**reference-only** until the gates below are closed against measured
artifacts. No trio CAD geometry, DXF, design table, or build-ready claim may
be promoted while any required gate on this page is open.

This file is complementary to
[`v5-material-measurement-gates.md`](../v5-material-measurement-gates.md) and
[`shell-head-tension-validation-plan.md`](../shell-head-tension-validation-plan.md):
those files cover the full V5 readiness surface; this file is the narrower
"do not draw the trio yet" authority list referenced from the README.

## Gate Table

| Gate | Subject | Required Measured Evidence | Blocks Until Passed |
| --- | --- | --- | --- |
| DUN-AUTH-01 | Shell diameter basis | Per voice: OD, ID, and head-seat diameter measured on a real glued-up shell coupon or finished prior build, with the dimension basis stated explicitly (not inferred from a scan). | Trio CAD body geometry; family-spec.csv promotion to authority. |
| DUN-AUTH-02 | Shell depth (body length) | Per voice: measured body length from a real shell, with end-trim allowance recorded. | Trio CAD body geometry; cut-list release. |
| DUN-AUTH-03 | Shell wall thickness | Coupon-measured wall thickness after stave glue-up and sanding, with target tolerance. | Stave-width regeneration; trio CAD body geometry. |
| DUN-AUTH-04 | Head material identity | Hide species (e.g., cowhide), source/tannery, and lot or batch identifier recorded. | Head ordering; head-tension model. |
| DUN-AUTH-05 | Head thickness and mass | Coupon-measured hide thickness and mass per unit area for each voice's head batch. | Membrane pitch model; head-tension authority. |
| DUN-AUTH-06 | Head diameter | Per voice: measured cut diameter and finished installed diameter at the bearing edge. | Head-seat CAD; ring inside-diameter authority. |
| DUN-AUTH-07 | Head tension at first tuning | Initial rope tension or qualitative tightness state and resulting head pitch recorded for both heads of each voice. | Tuning math; final rope length and lacing pattern. |
| DUN-AUTH-08 | Stave construction provenance | Per shell: stave count, target diameter D, computed stave width w = π D / n, bevel angle θ = 180°/n, and which shop built it (e.g., Morgan Drums St. Paul MN, or a later rebuild) recorded against the as-built artifact. | Stave CAD; trio family-spec promotion. |
| DUN-AUTH-09 | Stave species and stock | Per shell: species, grain orientation, board thickness, and moisture content of the stave stock used. | Acoustic-model calibration; sourcing.csv promotion. |
| DUN-AUTH-10 | First tuning + strike log | Strike-log entry exists for each voice covering initial-pitch, settled-pitch (24 h rest), and post-playing pitch for both heads, with date, ambient temp/humidity, and stick used. | L3/L4 pitch claims; trio interval/tuning claim. |

Required gates: DUN-AUTH-01 through DUN-AUTH-10 — all are required before any
trio CAD claim is promoted from reference to authority.

## Strike-Log Requirement (DUN-AUTH-10 detail)

A trio tuning claim cannot rest on memory or planning scans. The first strike
log must record, per voice and per head:

- Date and time, ambient temperature, and relative humidity.
- Stick (material, length, head shape) and strike location on the head.
- Initial pitch immediately after tensioning (Hz or note-name + cents).
- Settled pitch after 24 h rest with no further tensioning.
- Post-playing pitch after one playing session.
- Notes on any retensioning between readings.

Until that log exists for all three voices, the trio interval relationship
(kenkeni ≈ P4 above sangban ≈ P4 above doundounba, per README) stays in the
"design intent" column, not the "measured" column.

## Authority Boundary

Until each required gate above is closed against measured evidence, the
following remain **reference-only** and may not be promoted into trio CAD,
DXF, design tables, or build-ready packets:

- The 17 in / 14 in / 11 in shell diameter targets.
- The 27.5 in / 22.65 in / 17.35 in body-length targets.
- The 18-stave / 24-stave width and bevel-angle calculations on the 2021
  scanned planning page.
- The kenkeni / sangban / doundounba pitch-interval intent.

Closing a gate means: a measured artifact (template, calibrated photo with
scale, calliper reading, scale weight, or strike-log row) exists in this
repo or in a linked log, and a row in
[`shell-response-capture-sheet.csv`](../shell-response-capture-sheet.csv) or
[`material-head-tension-coupon-log.csv`](../material-head-tension-coupon-log.csv)
points at it.

## Promotion Rule

A trio CAD claim (body geometry per voice, stave layout, ring/head-seat
geometry, rope path) may be drawn only after DUN-AUTH-01 through DUN-AUTH-10
are closed for that voice. A claim that spans the trio requires all three
voices to have passed independently. Drawings produced before that point are
exploration artifacts, not authority.
