# Fabrication Notes

Current status: starter notes only; not a shop-release process.

## Build Sequence

1. Confirm whether the scanned target diameters are outside diameter, inside
   diameter, or head-seat diameter.
2. Choose 18 or 24 staves for the trio, or record why one voice needs a
   different stave count.
3. Build a short stave-ring coupon before cutting full-height shell staves.
4. Validate glue-up roundness and sanding allowance on the coupon.
5. Define bearing-edge radius and sealing strategy.
6. Build a head seating coupon with scrap hide or a representative test head.
7. Build a rope/ring lacing coupon and measure stretch through at least one
   tightening cycle.
8. Only then release CAD/DXF for full shell staves, rings, and jigs.

## Stave Geometry Notes

The scanned planning page records both 24-stave and 18-stave options:

- 24 staves: 7.5 degree bevel per stave side.
- 18 staves: 10 degree bevel per stave side.

The recorded stave widths are planning values for the target diameters. They
must be regenerated from the final CAD diameter, wall thickness, and machining
allowance before cutting.

## Head And Rope Notes

The head system is structurally coupled. Tightening the vertical rope affects
both heads and changes shell loading, head pitch, playing feel, and long-term
rope creep. Do not validate one head in isolation and assume the pair will
behave the same.

Record at minimum:

- Dry shell weight before heading.
- Shell tap note before heading.
- Head hide thickness and wet/dry mass if possible.
- Initial seated head diameter after drying.
- Rope length before first tensioning and after 24 hours.
- Pitch readings at first tension, after rest, and after a playing cycle.

## Safety And Ergonomics

- Check for rope abrasion at rings and shell edges.
- Check carry balance and bell hardware clearance before final mounting.
- Round all player-contact edges.
- Confirm that any side bell mount does not create a snag point in the rope
  path.

## Shop Gate Reference

Use `shop-gate-tables.md` and `shop-gates.csv` as the release sequence for
coupon, dry shell, first headed drum, full trio, and final CAD/DXF review. A
passing coupon only advances the next gate; it does not make the trio
build-ready.
