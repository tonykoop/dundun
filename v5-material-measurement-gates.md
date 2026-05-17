# V5 Material And Measurement Gates

Status: L2 V5 build-packet candidate.

The packet is organized enough for review, but materials and dimensions still
block build-ready status. These gates preserve the difference between a useful
planning packet and a released shop packet.

## Material Gates

| Gate | Applies To | Required Evidence | Blocks |
| --- | --- | --- | --- |
| MAT-001 | Shell stave stock | Species, moisture content, board width, board thickness, and straight-grain yield recorded in `sourcing.csv` or purchase notes. | Stave cut list release |
| MAT-002 | Cowhide heads | Hide thickness, mass per unit area, soaked/stretch behavior, and head diameter recorded. | Membrane pitch model and head ordering |
| MAT-003 | Hoop/ring stock | Ring material, wire/rod size, welded roundness, wrap thickness, and corrosion/finish plan recorded. | Ring CAD/DXF and rope clearance |
| MAT-004 | Rope | Diameter, construction, supplier stretch data, and coupon stretch measurement recorded. | Final rope length and tensioning plan |
| MAT-005 | Finish/sealer | Finish compatibility with hide seating area and player contact checked on coupon. | Final bearing-edge and shell finish release |

## Measurement Gates

| Gate | Applies To | Required Evidence | Blocks |
| --- | --- | --- | --- |
| MEAS-001 | Shell diameter basis | Each planning diameter classified as OD, ID, or head-seat diameter, with source evidence. | CAD body model |
| MEAS-002 | Wall thickness | Target and measured coupon wall thickness with sanding allowance. | Stave width regeneration |
| MEAS-003 | Bearing edge | Radius/profile and head seating behavior from coupon. | Head-seat CAD and assembly notes |
| MEAS-004 | Shell resonance | Bare-shell tap tone or spectrum for each voice. | Acoustic model calibration |
| MEAS-005 | Head pitch | Initial, settled, and post-playing pitch readings for both heads. | L3/L4 pitch claims |
| MEAS-006 | Rope stretch | Marked rope length before tensioning, after 24 hours, and after one playing cycle. | Final rope quantity and lacing pattern |
| MEAS-007 | Bell/strap ergonomics | Photo or fit notes showing no rope interference and safe player contact. | Optional hardware placement |

## Promotion Rule

The packet can remain L2 while these rows are open. It can only move toward L3
after controlling CAD/DXF/design-table or measured-template artifacts replace
the reference-only planning dimensions.
