# Dundun Trio Shop Gate Tables

Status: L2 V5 build-packet candidate; not build-ready.

These gates define the shop sequence for validating the shell, head, and rope
tension family without turning reference-only planning pages into fabrication
authority.

## Gate Ladder

| Phase | Purpose | Required Exit Evidence | May Advance To |
| --- | --- | --- | --- |
| P0 evidence setup | Name the unknowns and prepare capture tables. | Shell/head/tension gate rows exist and are linked from the packet. | Coupon work only |
| P1 coupon validation | Test shell segment, head-seat, ring, finish, and rope behavior at small scale. | Coupon dimensions, photos/notes, rope stretch, wet/dry hide behavior. | Dry shell review |
| P2 dry shell review | Confirm per-voice shell geometry before heading. | Roundness, wall thickness, ring clearance, bell/strap clearance, tap tone. | First headed drum |
| P3 first headed drum | Validate one complete drum before committing the full trio. | Paired-head pitch log, rope creep log, head seating, ergonomic notes. | Full trio validation |
| P4 full trio validation | Validate family behavior and ensemble relationship. | Settled pitch logs, play-cycle records, rope/head movement, source notes. | CAD/DXF release review |
| P5 shop-release review | Promote measured evidence into controlling fabrication artifacts. | Reviewed CAD/DXF/design tables, updated cut list/BOM, closed V5 gates. | Separate release decision |

## Shell Shop Gates

| Gate | Entry Condition | Shop Action | Pass Evidence | Do Not Advance If |
| --- | --- | --- | --- | --- |
| Shell basis | Planning dimensions are identified as reference-only. | Measure source drum/template or recover original CAD note. | OD/ID/head-seat basis recorded for each voice. | Basis remains unknown. |
| Stave coupon | Candidate stave count is chosen for testing only. | Build a short 18- or 24-stave ring coupon from representative stock. | Wall thickness, roundness, glue quality, and sanding allowance recorded. | Coupon cannot stay round or glue lines fail. |
| Dry shell | Coupon evidence exists. | Build or dry-fit one full shell and measure both ends plus mid-body. | Roundness and length are within the chosen service threshold. | Ring/head seating would be uneven. |
| Tap tone | Dry shell is structurally acceptable. | Record bare-shell tap note or spectrum. | Tap-tone log exists before heading. | Cracks, rattles, or unstable joints dominate response. |

## Head Shop Gates

| Gate | Entry Condition | Shop Action | Pass Evidence | Do Not Advance If |
| --- | --- | --- | --- | --- |
| Hide source | Candidate hide stock exists. | Record source, thickness, area, mass, and condition. | Mass-per-area and condition notes are captured. | Material identity or condition is unknown. |
| Head-seat coupon | Shell coupon and finish sample exist. | Seat wet hide on coupon/ring and let it dry. | Dry clear diameter, stretch, finish behavior, and seating notes recorded. | Hide slips, tears, or finish causes seating failure. |
| Paired-head balance | One shell has ring/head geometry cleared. | Stage tension both heads and record pitch/feel for each step. | Both heads reach stable paired tension without unsafe loading. | One head overloads before the pair reaches useful response. |

## Tension And Hardware Gates

| Gate | Entry Condition | Shop Action | Pass Evidence | Do Not Advance If |
| --- | --- | --- | --- | --- |
| Rope material | Candidate rope and ring/wrap stock exist. | Record rope diameter, construction, source, knot behavior, and ring finish. | Rope/ring material record exists. | Rope identity or ring finish is unknown. |
| Rope stretch | Lacing coupon is built. | Mark rope and measure after first pull, 24 hours, and a playing cycle. | Stretch and knot-slip log exists. | Stretch is excessive, uneven, or unmeasurable. |
| Clearance mockup | Ring/head geometry and optional hardware locations are known. | Mock verticals, tension diamonds, bell mount, and strap/carry points. | Photos/notes show no snag, rub, or player-contact hazard. | Rope path conflicts with bell/strap or abrades shell/ring. |
| Settled assembly | First headed drum has staged tension data. | Recheck pitch, rope marks, and head seating after rest and playing. | Stability report exists. | Pitch or head seating moves outside the chosen threshold. |

## Family Release Gate

Do not promote the trio beyond L2 until every voice has shell/head/tension
evidence and the controlling CAD/DXF/design-table files have been regenerated
from measured values. A single successful coupon or first drum is evidence for
the next gate; it is not a family shop release.
