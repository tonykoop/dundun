# V5 Packet Checklist

Status: L2 V5 build-packet candidate.

This checklist maps the dundun trio packet to the Instrument Maker V5
build-packet standard. It is a review checklist, not a build release.

## Readiness

- [x] README uses an approved V5 readiness value: `Status: L2 V5 build-packet candidate`.
- [x] L3/L4 and build-ready language is avoided.
- [x] Reference-only planning dimensions are separated from fabrication authority.
- [x] Unknown dimensions remain measurement gates instead of guessed CAD values.

## Required Packet Surface

- [x] `README.md`
- [x] `design.md`
- [x] `family-spec.csv`
- [x] `bom.csv`
- [x] `sourcing.csv`
- [x] `cut-list.csv`
- [x] `validation.csv`
- [x] `validation-loop.csv`
- [x] `shell-head-tension-validation-plan.md`
- [x] `shop-gate-tables.md`
- [x] `shop-gates.csv`
- [x] `risks.md`
- [x] `drawing-brief.md`
- [x] `photo-shotlist.md`
- [x] `visual-output-register.csv`
- [x] `cad/mcp-session-log.md`
- [x] `analysis/membrane-shell-study.wl` source notes, with no runtime claim.

## Fabrication Authority

- [x] Existing scans and photos are marked `reference_only`.
- [x] Existing Wolfram starter is marked `analysis_only` and source-only.
- [x] No generated image, photo, SVG, or prose note is marked as fabrication authority.
- [x] Future CAD/DXF/design-table authority is named in `cad-dxf-authority-plan.md`.

## Remaining Promotion Gates

- [ ] Resolve whether shell diameters are OD, ID, or head-seat diameters.
- [ ] Measure or otherwise verify wall thickness, bearing edge, ring offsets, and rope path.
- [ ] Select 18 or 24 staves per voice and regenerate stave widths from controlled values.
- [ ] Produce reviewed CAD/DXF/design-table geometry before any L3 claim.
- [ ] Run Wolfram only when measured inputs exist and record command, date, version, and outputs.
- [ ] Execute the shell/head/tension shop gates through P4 before any family
      shop-release review.
