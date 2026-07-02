# V5 MCP Session Log

This is a V5 starter provenance log for current packet artifacts and future
CAD/MCP/tool work. It does not claim build-ready geometry.

| timestamp | tool | artifact | session_id | parent_artifact | authority | notes |
| --- | --- | --- | --- | --- | --- | --- |
| 2026-05-17T16:20:00Z | wolfram | analysis/membrane-shell-study.wl | unknown | family-spec.csv | analysis_only | Runtime smoke check only; no measured outputs claimed. |
| 2026-05-17T16:25:00Z | design-table | family-spec.csv | unknown | drawings/img20260426_00504715.png | reference_only | Planning values transcribed from reference scan; not fabrication authority. |
| 2026-05-17T16:30:00Z | design-table | validation.csv | unknown | validation-loop.csv | analysis_only | V5 readiness gates summarize open material and measurement checks. |
| 2026-05-17T18:17:43Z | codex | shell-head-tension-validation-plan.md | r21-B7 | validation-loop.csv | analysis_only | Family shell/head/tension gate plan; no measured geometry or build-ready claim. |
| 2026-05-17T18:17:43Z | codex | shop-gates.csv | r21-B7 | v5-material-measurement-gates.md | analysis_only | Shop gate ladder for coupons, dry shell, first headed drum, trio validation, and future CAD/DXF review. |
| 2026-07-01T00:00:00Z | claude-code (Fable 5) + OpenSCAD CLI | CAD/dundun.scad | fable-v5-refresh-2026-07-01 | family-spec.csv | pending_measurement | Parametric trio master: kenkeni/sangban/doundounba shell envelope (diameter, length, stave-width/bevel formula) driven by family-spec.csv. Wall thickness, head clear diameter, and ring dimensions are prototype_assumption placeholders pending reference/measured-authority-gates.csv DUN-AUTH-03/06 (open). OpenSCAD render check: pass (openscad -o STL, exit 0; verified for both render_mode=0 single-voice and render_mode=1 trio). Not fabrication authority until reviewed. |
| 2026-07-01T00:05:00Z | claude-code (Fable 5) | wolfram/dundun-wolfram-model.wl | fable-v5-refresh-2026-07-01 | family-spec.csv | derived_preview | V5 refresh pass: verified existing three-drum membrane tension model, left content unchanged, and added visual-output-register.csv row WL-002. Source-only; not executed this pass. |
| 2026-07-01T00:10:00Z | claude-code (Fable 5) | visual-output-register.csv rows CAD-001/WL-002; evolution/master/manifest.json; evolution/design-intent.md; evolution/revisions.md | fable-v5-refresh-2026-07-01 | design.md, family-spec.csv, risks.md | reference_only | V5 packet refresh + evolution Stage 0 intake: README/design.md status line format confirmed against approved V5 values (no rewrite needed); register/provenance rows added for the new CAD master and existing Wolfram model; Stage 0 intake authored. No fabrication-authority claim made or changed — this packet remains L2 with zero fabrication-authority artifacts by design (design.md "Fabrication authority: not build-ready"; capstone-manifest.json "fabrication_authority: none yet"). |
