# Shell, Head, And Tension Family Validation Plan

Status: L2 V5 build-packet candidate; not build-ready.

This plan narrows the next validation loop for the dundun trio. It keeps the
existing planning dimensions useful while preventing scans, prose, or photos
from becoming fabrication authority before measured shell, head, ring, and
tension evidence exists.

## Authority Boundary

Current dimensional evidence comes from scanned planning pages and build
photos. Those artifacts remain reference-only. The shop-release authority must
come later from measured templates, reviewed CAD/DXF, or design tables that
resolve:

- whether the listed diameters are outside diameter, inside diameter, or
  finished head-seat diameter;
- wall thickness and sanding allowance after stave glue-up;
- bearing-edge radius/profile and finish behavior under wet cowhide;
- hoop/ring inside diameter, outside diameter, wrap thickness, and roundness;
- rope diameter, lacing geometry, stretch, and knot/diamond behavior;
- paired-head tuning response after rest and after playing.

## Family Validation Matrix

| Gate | Doundounba | Sangban | Kenkeni | Evidence Required Before Promotion |
| --- | --- | --- | --- | --- |
| Shell basis | Resolve 17.0 in target basis | Resolve 14.0 in target basis | Resolve 11.0 in target basis | Measured OD/ID/head-seat table tied to source note |
| Shell length | Confirm 27.5 in body length | Confirm 22.65 in body length | Confirm 17.35 in body length | Measured body-length basis and end-trim allowance |
| Stave count | Choose 18 or 24 | Choose 18 or 24 | Choose 18 or 24 | Trio-level decision record, stock-yield note, jig implication |
| Wall thickness | TBD | TBD | TBD | Coupon wall thickness before/after sanding |
| Bearing edge | TBD | TBD | TBD | Head-seat coupon photos and pass/fail seating notes |
| Bare-shell tone | TBD | TBD | TBD | Tap-tone or spectrum log before heading |
| Head mass | TBD | TBD | TBD | Hide thickness and mass-per-area measurements |
| Tension behavior | TBD | TBD | TBD | Rope stretch log at first pull, 24 hours, and after playing |
| Ensemble pitch | Lowest voice | Middle voice | Highest voice | Pitch/spectrum log after all three drums settle |

## Shell Gate Plan

| Gate ID | Question | Method | Stop Condition | Output Artifact |
| --- | --- | --- | --- | --- |
| SHL-001 | Are target diameters OD, ID, or head-seat values? | Measure surviving drum/template or cross-check original CAD notes. | Source cannot identify the dimension basis. | Measured shell basis table |
| SHL-002 | Which stave count should the trio use? | Compare 18-stave and 24-stave coupons for roundness, glue-line quality, and stock yield. | Stave coupon cannot meet roundness or glue-up quality. | Stave count decision record |
| SHL-003 | What wall thickness is realistic after sanding? | Cut a short shell-ring coupon and measure before/after sanding. | Wall thickness falls below structural margin or becomes inconsistent. | Coupon measurement log |
| SHL-004 | Does the shell stay round enough for the head system? | Measure roundness at both ends and mid-body after glue-up. | Out-of-round shell blocks even ring/head seating. | Roundness inspection table |
| SHL-005 | Does the shell support useful bass response? | Tap-test bare shell and record spectrum or tuner reading. | Tap response is unstable, cracked, or dominated by assembly defects. | Bare-shell tone log |

## Head Gate Plan

| Gate ID | Question | Method | Stop Condition | Output Artifact |
| --- | --- | --- | --- | --- |
| HD-001 | What hide stock is actually being used? | Record supplier/source, thickness, mass per area, and condition. | Hide source, thickness, or condition is unknown. | Hide material record |
| HD-002 | How much wet-to-dry stretch occurs? | Soak a representative hide sample and seat it on a coupon/ring. | Stretch cannot be measured or causes tearing/slipping. | Wet/dry stretch log |
| HD-003 | What head clear diameter should CAD control? | Measure seated dry head against shell and ring offsets. | Head clear diameter conflicts with shell/ring geometry. | Head-seat measurement table |
| HD-004 | Are both heads balanced as a pair? | Record initial pitch and feel on both heads after staged tensioning. | One head cannot reach stable tension without overloading the other. | Paired-head balance log |
| HD-005 | Does finish affect seating or hide life? | Test finish/sealer on the bearing-edge coupon before full shell use. | Finish softens, abrades, stains, or prevents reliable seating. | Finish compatibility note |

## Tension Gate Plan

| Gate ID | Question | Method | Stop Condition | Output Artifact |
| --- | --- | --- | --- | --- |
| TNS-001 | What rope specification is controlling? | Record rope diameter, construction, supplier data, and knot behavior. | Rope source or construction is unknown. | Rope material record |
| TNS-002 | How much rope stretch occurs? | Mark a rope segment and measure after first pull, 24 hours, and one playing cycle. | Stretch is excessive, uneven, or cannot be tracked. | Rope stretch log |
| TNS-003 | Does the lacing path clear rings, shell, and bell hardware? | Mock up verticals and tension diamonds with optional bell/strap locations. | Rope rubs, crosses hardware, or creates unsafe snag points. | Lacing clearance photo set |
| TNS-004 | How does tension change pitch across the pair? | Tune in staged pulls and record both-head pitch after each stage. | Pitch movement is discontinuous or requires unsafe tension. | Tension-to-pitch table |
| TNS-005 | Does the assembly remain stable after use? | Recheck pitch, rope marks, and head seating after rest and playing. | Pitch/rope/head movement exceeds the chosen service threshold. | Settled assembly report |

## Cultural And Source Controls

The repo can document Tony's stave-built Morgan Drums method and the measured
behavior of this family. It should not present one universal dundun standard
or imply that the scanned planning dimensions are culturally canonical.

Before expanding public build instructions, add source notes for terminology,
regional variation, ensemble roles, and any named tradition-specific tuning
claim. Keep material choices such as cowhide, rope fiber, ring material, and
bell mounting described as this packet's assumptions until sourced or measured.

## Promotion Rule

The trio remains L2 until the gates above produce measured records and the
controlling CAD/DXF/design-table files are named. Passing a coupon test can
promote a specific decision from unknown to measured, but it does not promote
the full family to build-ready by itself.
