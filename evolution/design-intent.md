# Design Intent — dundun rev A

- Master CAD: `CAD/dundun.scad` (sha256: 90326b2a0ea46290eee50c7578de435ae26c3b77eb48b05d5f75c6962cd06267), driven by `family-spec.csv` (sha256: 4946e04ba97839b41f58ad9addc6cfc6fdb9a4c631a14182c4597d9f7c3fde78)
- Function: A three-drum stave-built dundun trio (kenkeni/sangban/doundounba) — dual-headed cylindrical cowhide bass drums that anchor a West African djembe ensemble. Each shell is a closed cylinder with a single constant compound miter angle on every stave (design.md "The engineering challenge"); pitch comes from the interaction of tensioned-membrane head modes, cylindrical shell/air resonance, and dual-head coupling through the shared rope-tensioned hoop rings. Target pitch relationship is approximately a perfect fourth between adjacent voices (kenkeni highest, doundounba lowest); exact Hz targets are measurement-required.
- Environment: shop-built acoustic instrument; cowhide heads are humidity- and tension-sensitive, and rope tension couples both heads on each shell (loosening/tightening one affects the other).
- Target qty: 1 trio (3 drums, prototype). Deadline: TBD. Budget/unit ceiling: TBD.

## Critical dimensions (carry tolerances)

| Feature | Nominal | Tolerance | Why critical | Source |
| --- | --- | --- | --- | --- |
| Kenkeni shell diameter | 11.0 in (basis unresolved: OD/ID/head-seat TBD) | measurement gate DUN-AUTH-01 | sets highest voice's air-column/head geometry | family-spec.csv row 3 (starter assumption) |
| Sangban shell diameter | 14.0 in (basis unresolved) | measurement gate DUN-AUTH-01 | sets middle voice's air-column/head geometry | family-spec.csv row 2 (starter assumption) |
| Doundounba shell diameter | 17.0 in (basis unresolved) | measurement gate DUN-AUTH-01 | sets bass voice's air-column/head geometry | family-spec.csv row 1 (starter assumption) |
| Kenkeni shell body length | 17.35 in | measurement gate DUN-AUTH-02 | shell air-column length, ergonomics | family-spec.csv row 3 (starter assumption) |
| Sangban shell body length | 22.65 in | measurement gate DUN-AUTH-02 | shell air-column length, ergonomics | family-spec.csv row 2 (starter assumption) |
| Doundounba shell body length | 27.5 in | measurement gate DUN-AUTH-02 | shell air-column length, ergonomics | family-spec.csv row 1 (starter assumption) |
| Stave count (per voice) | 18 or 24 (undecided) | fixes stave width + bevel angle | rounder shell (24) vs. wider-stock yield (18) | family-spec.csv `stave_count_options`; design.md "Decisions To Make Before CAD Release" |
| Head clear diameter (all voices) | TBD | measurement gate DUN-AUTH-06 | head-seat CAD, ring inside diameter, pitch model | family-spec.csv `target_head_clear_diameter_in` (TBD); reference/measured-authority-gates.csv |

## Incidental (free for DFM)

- Shell exterior finish/stain, optional side-bell mount styling (subject to rope-clearance review), cosmetic ring wrap treatment, non-bearing-surface details.

## Must-nots (DFM may never violate)

- Do not treat scanned planning pages (`drawings/img20260426_00504715.png` and siblings) as fabrication authority — reference_only until measured or redrawn (visual-output-register.csv; cad-dxf-authority-plan.md).
- Do not promote trio CAD/DXF/design-table geometry past `pending_measurement` until every open gate in `reference/measured-authority-gates.md` (shell diameter basis, wall thickness, head material/thickness/diameter, stave provenance, first-tuning strike log) is closed.
- Do not claim a fixed standard tuning across all dundun traditions, and keep Tony's Morgan Drums construction method separated from Mande cultural/traditional authorship claims (risks.md "Provenance And Cultural Risks").
- Do not claim measured Wolfram model outputs — `wolfram/dundun-wolfram-model.wl` and `analysis/membrane-shell-study.wl` stay source-only/smoke-check evidence until a real run log with measured inputs exists (risks.md "Stop Conditions").
- Wall thickness, head diameter, and ring dimensions in `CAD/dundun.scad` are prototype_assumption placeholders for rendering only — never treat them as controlling shop values.

## Material intent

- Preferred: stable hardwood stave stock (species TBD); cowhide heads (not goatskin — retuning required to substitute); steel or traditional ring stock; low-stretch drum rope; oil or durable moisture-resistant shell finish that does not compromise head seating (bom.csv).
- Acceptable subs: per sourcing.csv (all sources currently TBD/unverified).
- Forbidden: goatskin substituted for cowhide without retuning the acoustic target (bom.csv BOM-002 notes).

## Stage status

Stage 0 intake complete 2026-07-01. Gate A (Alpha shop compile) NOT yet run — no concessions logged, nothing presented as shippable or build-ready.
